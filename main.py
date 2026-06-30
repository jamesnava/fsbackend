from fastapi import FastAPI, File, UploadFile,Form
from fastapi.responses import FileResponse
from procesamiento import preprocesamiento,leerImage
import cv2
import numpy as np
import json

app=FastAPI()

@app.post("/upload/")
async def upload_image(file:UploadFile=File(...),roi:str = Form(...)):
	 # Leer contenido binario
	contents = await file.read()
    # Convertir a numpy array
	nparr = np.frombuffer(contents, np.uint8)
    # Decodificar como imagen OpenCV
	img = cv2.imdecode(nparr, cv2.IMREAD_COLOR) 
	roi_data=json.loads(roi)   
	resultado= await preprocesamiento(img,roi_data)	
	return {"texto": resultado}

@app.get("/probar/")
async def prueba():
	mensaje=await leerImage("CAJAERO.jpeg")
	return mensaje
