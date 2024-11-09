FROM python:3.12-slim

WORKDIR /app

COPY web_app /app
COPY requirements.txt /app

RUN pip install --no-cache-dir fastapi pydantic pandas uvicorn scikit-learn catboost jinja2

EXPOSE 8000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
