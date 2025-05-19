FROM docker.arvancloud.ir/python:3.10

WORKDIR /src

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . /src

EXPOSE 8000
