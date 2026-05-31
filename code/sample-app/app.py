from fastapi import FastAPI
from fastapi.responses import JSONResponse
import os
import socket

app = FastAPI(title="Kiro Workshop FastAPI Demo")


@app.get("/")
def root() -> dict[str, str]:
    return {
        "message": "Hello from the Kiro workshop.",
        "host": socket.gethostname(),
        "version": os.environ.get("APP_VERSION", "dev"),
    }


@app.get("/healthz")
def healthz() -> dict[str, str]:
    return {"status": "ok"}


@app.get("/readyz")
def readyz() -> JSONResponse:
    return JSONResponse(status_code=200, content={"status": "ready"})
