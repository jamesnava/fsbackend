import cv2
import numpy as np


img = cv2.imread("caj.jpeg", cv2.IMREAD_GRAYSCALE)

# 1. Recortar a la región que contiene texto (ajusta estos valores a tu imagen)
crop = img[245:740, 0:1000]

# 2. Escalar 2x: mejora bastante la precisión del OCR en texto pequeño
big = cv2.resize(crop, None, fx=2, fy=2, interpolation=cv2.INTER_CUBIC)

# 3. Median blur grande (9): es lo que mejor eliminó el patrón de
#    moiré/franjas Y la textura de la sombra de la mano, sin romper el texto.
#    (probado contra fastNlMeans, bilateral y blur normal: este ganó)
med = cv2.medianBlur(big, 9)


# 4. Umbral de Otsu: al estar acotada la región, un único umbral global funciona bien
_, otsu = cv2.threshold(med, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)


# 5. Limpieza final de componentes: solo motas puntuales sueltas
num_labels, labels, stats, _ = cv2.connectedComponentsWithStats(otsu, connectivity=8)
h_img, w_img = otsu.shape
clean = np.zeros_like(otsu)
for i in range(1, num_labels):
    area = stats[i, cv2.CC_STAT_AREA]
    if area < 6:
        continue
    if area > 0.02 * h_img * w_img:
        continue
    clean[labels == i] = 255

kernel = cv2.getStructuringElement(cv2.MORPH_ELLIPSE, (2, 2))
closed = cv2.morphologyEx(clean, cv2.MORPH_CLOSE, kernel, iterations=1)

final = cv2.bitwise_not(closed)
cv2.imwrite("3_final_para_ocr.png", final)

print("---- OCR sobre el resultado final ----")
#print(pytesseract.image_to_string(final, config="--psm 6"))
