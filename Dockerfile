FROM docker.arvancloud.ir/python:3.10

WORKDIR /src

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . /src
RUN chmod +x /src/wait-for-it.sh
RUN chmod +x /src/entrypoint.sh

EXPOSE 8000