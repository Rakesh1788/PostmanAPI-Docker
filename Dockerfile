FROM node:10.11.0-alpine

RUN npm install -g newman

WORKDIR '/tmp/collections'

COPY collection*.json ./

ENTRYPOINT ["newman"]
