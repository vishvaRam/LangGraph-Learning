FROM python:3.12-slim

WORKDIR /app

ENV UV_SYSTEM_PYTHON=1

RUN pip install --upgrade pip

RUN pip install uv

COPY requirements.txt .

RUN uv pip install -r requirements.txt

COPY . .
