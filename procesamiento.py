
import pytesseract
import cv2
import numpy as np
import httpx
import re


async def leerImage(ruta_archivo:str):
	datos={"apikey":"K85162706288957","language":'eng'}
	with open(ruta_archivo,"rb") as f:
		archivos={"file":(ruta_archivo,f,'image/png')}

		async with httpx.AsyncClient() as cliente:
			respuesta=await cliente.post("https://api.ocr.space/parse/image",data=datos,files=archivos)
			resultado_json=respuesta.json()
	texto_extraido=resultado_json["ParsedResults"][0]["ParsedText"]
	final=ObtencionCodigo(texto_extraido)
	print(final)
	return {"texto":texto_extraido}


async def preprocesamiento(img,roi):
	h,w,_=img.shape	
	x1 = int(roi["x"] * w)
	y1 = int(roi["y"] * h)
	x2 = int((roi["x"] + roi["w"]) * w)
	y2 = int((roi["y"] + roi["h"]) * h)	
	recorte = img[y1:y2, x1:x2]
	imagen_escalada = cv2.resize(recorte, None, fx=0.6, fy=0.6, interpolation=cv2.INTER_LINEAR)
	gray_image=cv2.cvtColor(imagen_escalada,cv2.COLOR_BGR2GRAY)
	#borrado
	bor_image=processImage(gray_image)
	ruta="gray_image.png"	
	cv2.imwrite(ruta,bor_image)
	resultado=await leerImage(ruta)
	return resultado

def processImage(img):
	binary_adapt=cv2.adaptiveThreshold(img,255,cv2.ADAPTIVE_THRESH_GAUSSIAN_C,cv2.THRESH_BINARY_INV,21,2)
	kernel=np.ones((3,3),np.uint8)
	opening=cv2.morphologyEx(binary_adapt,cv2.MORPH_OPEN,kernel)
	return opening

def ObtencionCodigo(texto):
	patronMStatus=r"M-Status:\s*(w+)"
	patronSData=r"S-Data (Hex):\n\s*(\w+)"
	patronMData=r"M-Data (Hex):\n\s*([\w ]+)"
	patronTCode=r"T-Code:\s*(d+)"
	patrones={"m_status":patronMStatus,"s_data":patronSData,
	"s_data":patronMData,"t_code":patronTCode}
	resultados={}
	for nombre,patron in patrones.items():
		coincidencia=re.search(patron,texto)
		if coincidencia:
			resultados[nombre]=coincidencia.group(1).strip()
	return resultados
