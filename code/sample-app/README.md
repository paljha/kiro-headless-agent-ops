# sample-app

Minimal FastAPI service used as the workshop deployment target. Three
endpoints:

- `GET /` — returns hostname and version
- `GET /healthz` — liveness probe
- `GET /readyz` — readiness probe

## Run locally

```bash
pip install -r requirements.txt
uvicorn app:app --host 0.0.0.0 --port 8000
```

## Build and push

```bash
ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
aws ecr get-login-password --region us-west-2 | \
  docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.us-west-2.amazonaws.com
docker build -t fastapi-demo .
docker tag fastapi-demo:latest $ACCOUNT_ID.dkr.ecr.us-west-2.amazonaws.com/fastapi-demo:latest
docker push $ACCOUNT_ID.dkr.ecr.us-west-2.amazonaws.com/fastapi-demo:latest
```
