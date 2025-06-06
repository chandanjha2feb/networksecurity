FROM python:3.12-slim
WORKDIR /app
COPY . /app

RUN apt update -y && apt install awscli -y && apt install git -y

RUN apt-get update && pip install -r requirements.txt
CMD ["python", "app.py"]