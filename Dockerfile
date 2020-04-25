FROM node:10.11.0-alpine

WORKDIR /tmp/collections 
COPY collection*.json ./
ENTRYPOINT ["newman"]

COPY . .
