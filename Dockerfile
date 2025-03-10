FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .
COPY run-tests.sh .
COPY test_app.py .

RUN chmod +x run-tests.sh

EXPOSE 5000

CMD ["python", "app.py"]
