

import cv2
import numpy as np
import httpx
import re
from fastapi import HTTPException
from database import execute_query


async def leerImage(ruta_archivo:str):
	datos={"apikey":"K85162706288957","language":'eng'}

	try:
		with open(ruta_archivo,"rb") as f:
			archivos={"file":(ruta_archivo,f,'image/png')}
			async with httpx.AsyncClient(timeout=60.0) as cliente:
				respuesta=await cliente.post("https://api.ocr.space/parse/image",data=datos,files=archivos)
				resultado_json=respuesta.json()
	except httpx.ReadTimeout:
		return HTTPException(status_code=504,detail={"detail":"ORC API no respondio a tiempo"})
	except Exception as e:
		return HTTPException(status_code=500,detail={"detail":f"error inesperado: {str(e)}"})

	if "ParsedResults" not in resultado_json:
		return JSONResponse(status_code=400, content={"detail": resultado_json.get("ErrorMessage", "Error en OCR")})
		
	texto_extraido=resultado_json["ParsedResults"][0]["ParsedText"]
	final_texto=ObtencionCodigo(texto_extraido)

	return {"texto":texto_extraido,'valido':final_texto}


async def preprocesamiento(img,roi):
	h,w,_=img.shape	
	x1 = int(roi["x"] * w)
	y1 = int(roi["y"] * h)
	x2 = int((roi["x"] + roi["w"]) * w)
	y2 = int((roi["y"] + roi["h"]) * h)	
	recorte = img[y1:y2, x1:x2]
	#borrado
	bor_image=processImage(recorte)

	ruta="gray_image.png"	
	cv2.imwrite(ruta,bor_image)
	resultado=await leerImage(ruta)
	return resultado

def processImage(img):

	imagen_escalada = cv2.resize(img, None, fx=0.6, fy=0.6, interpolation=cv2.INTER_LINEAR)
	
	gray_image=cv2.cvtColor(imagen_escalada,cv2.COLOR_BGR2GRAY)

	clahe=cv2.createCLAHE(clipLimit=2.0,tileGridSize=(8,8))
	gris=clahe.apply(gray_image)

	kernel = cv2.getStructuringElement(cv2.MORPH_RECT,(31,31))
	tophat = cv2.morphologyEx(gris,cv2.MORPH_TOPHAT,kernel)	
	return tophat

def ObtencionCodigo(texto):
	patronSData=r"S-Data\s*(?:\(Hex\))?[:;.]?\s*\r?\n([^\r\n]+)"
	patronMStatus=r"M-Status[:.]*\s*([0-9]+)"
	patronMData=r"M-Data\s*(?:\(Hex\))?:?\s*\r?\n([^\r\n]+)"
	patronTCode=r"T-Code[:.;]*\s*([0-9]+)"
	patrones={"m_status":patronMStatus,"s_data":patronSData,
	"m_data":patronMData,"t_code":patronTCode}
	resultados={}
	for nombre,patron in patrones.items():
		coincidencia=re.search(patron,texto)
		if coincidencia:
			resultados[nombre]=coincidencia.group(1).strip()
	
	# Si se capturó m_data con patrón "xx yy aa cc", generar 4 consultas SQL
	if "m_data" in resultados:
		mdata_value = resultados["m_data"]
		partes = mdata_value.split()
		
		print(partes)
		#consultas = []
		#if len(partes) >= 1:
		#	# Cambia "tabla1" y "campo1" por tus nombres reales
		#	q1 = f"SELECT * FROM tb_b0 WHERE campo1 = '{partes[0]}'"
		#	consultas.append(q1)
		#if len(partes) >= 2:
		#	q2 = f"SELECT * FROM tabla2 WHERE campo2 = '{partes[1]}'"
		#	consultas.append(q2)
		#if len(partes) >= 3:
		#	q3 = f"SELECT * FROM tabla3 WHERE campo3 = '{partes[2]}'"
		#	consultas.append(q3)
		#if len(partes) >= 4:
		#	q4 = f"SELECT * FROM tabla4 WHERE campo4 = '{partes[3]}'"
		#	consultas.append(q4)
		
		resultados["consultas_sql"] = consultas
	
	return resultados
