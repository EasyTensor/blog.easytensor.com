FROM golang:latest

RUN apt-get update && apt-get install -y hugo && rm -rf /var/lib/apt/lists/*
RUN mkdir /blog
WORKDIR /blog
COPY . .
CMD make serve
