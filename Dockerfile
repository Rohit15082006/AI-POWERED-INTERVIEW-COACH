FROM python:3.13-slim

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY requirements.txt requirements_rl.txt ./
RUN pip install --no-cache-dir -r requirements.txt -r requirements_rl.txt

COPY . .

EXPOSE 5000
CMD ["python", "app.py"]
