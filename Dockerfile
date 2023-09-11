FROM python:3.10-alpine

RUN mkdir /lab1
WORKDIR /lab1
RUN apk --no-cache add musl-dev linux-headers g++
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

LABEL maintainer="Dheeraj <jadheeraj.inbox@gmail.com>" \version="1.0"


CMD ["python", "src/lab1.py"]
