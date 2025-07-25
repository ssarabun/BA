# Базовий образ
FROM python:3.10-slim

# Встановлення залежностей
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

# Копіюємо код
COPY . .

# Запуск через Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]

