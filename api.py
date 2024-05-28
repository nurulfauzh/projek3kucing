from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello Word"}

from fastapi import FastAPI,File,UploadFile
from fastapi.responses import HTMLResponse
from fastapi.middleware.cors import CORSMiddleware
from fastapi. responses import JSONResponse
from PIL import Image

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"]
)

@app.post('/upload')
async def screening_test1(file: UploadFile = File(...)):
    contents = file.file.read()
    image = image.open(io.BytesIO(contents))

    print(image)

    return JSONResponse(contents={"status": "berhasil", "p": "p"}, status_code=2000)

