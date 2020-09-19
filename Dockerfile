FROM python:3.8.5-alpine3.12
MAINTAINER MasayaSuzuki

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

# install gcc for pip install
RUN apk add --no-cache --update python3-dev gcc build-base
RUN pip install --upgrade pip && pip install pip-tools

# app directory
RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

EXPOSE 5000