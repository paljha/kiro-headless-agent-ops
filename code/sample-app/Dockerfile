FROM public.ecr.aws/docker/library/python:3.12-slim AS base

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py ./

EXPOSE 8000

# Run as non-root.
RUN useradd --create-home --shell /bin/bash app
USER app

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
