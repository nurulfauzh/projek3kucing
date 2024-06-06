from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"Halo": "Kelompok 5"}

from fastapi import FastAPI,File,UploadFile
from fastapi.responses import HTMLResponse
from fastapi.middleware.cors import CORSMiddleware
from fastapi. responses import JSONResponse
# from PIL import Image

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
    from PIL import Image
    import io
    contents = file.file.read()
    Image = Image.open(io.BytesIO(contents))

    print(Image)

    return JSONResponse(content={"status": "berhasil", "p": "p"}, status_code=200)

