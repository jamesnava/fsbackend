from fastapi import FastAPI, File, UploadFile,Form
from fastapi.responses import FileResponse
from procesamiento import preprocesamiento,leerImage

import cv2
import numpy as np
import json

app=FastAPI()

@app.on_event("startup")
async def startup():
    await connect_db()

@app.on_event("shutdown")
async def shutdown():
    await disconnect_db()

@app.post("/upload/")
async def upload_image(file:UploadFile=File(...),roi:str = Form(...)):
	print("llega al servidor")
	 # Leer contenido binario
	contents = await file.read()
    # Convertir a numpy array
	nparr = np.frombuffer(contents, np.uint8)
    # Decodificar como imagen OpenCV
	img = cv2.imdecode(nparr, cv2.IMREAD_COLOR) 
	roi_data=json.loads(roi)   
	resultado= await preprocesamiento(img,roi_data)
		
	return resultado

@app.get("/probar/")
async def prueba():	
	return {"mensaje":"hola"}
