# FROM python:3.9-slim
# WORKDIR /app
# ADD . /app
# RUN pip install --trusted-host pypi.python.org Flask Redis
# EXPOSE 80
# CMD ["python", "app.py"]

FROM alpine:latest

RUN apk update
RUN apk add python3 py3-pip
RUN pip3 install Flask flask-restful
RUN mkdir /app
COPY ./app.py /app/app.py

CMD python3 /app/app.py
## For containers to communicate with other, they need to be part of the same “network”.

## Docker creates a virtual network called bridge by default, and connects your containers to it.

## In the network, containers are assigned an IP address, which they can use to address each other.

