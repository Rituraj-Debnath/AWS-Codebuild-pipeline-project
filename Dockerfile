
FROM python:3.8


WORKDIR /app


COPY requirements.txt .

# Installing the project dependencies
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
