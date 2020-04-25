FROM node:10.11.0-alpine

WORKDIR /tmp/collections 

ENTRYPOINT ["newman"]

COPY . .
