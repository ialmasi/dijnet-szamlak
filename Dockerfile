FROM node:12-alpine

RUN mkdir /app /config
COPY ./dijnet-bot /app
WORKDIR /app
RUN ls /app && npm i -g .

WORKDIR /config
CMD dijnet-bot --output-dir /tmp/szamlak -s 5 