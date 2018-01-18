FROM python:3.6-alpine

RUN mkdir -p /usr/src
WORKDIR /usr/src/server
COPY requirements.txt /usr/src/server/requirements.txt
RUN apk add --update postgresql-dev build-base && \
    pip install --upgrade pip && \
	pip install -r /usr/src/server/requirements.txt
