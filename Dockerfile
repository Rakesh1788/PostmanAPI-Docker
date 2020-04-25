FROM node:10.11.0-alpine

RUN npm install -g newman newman-reporter-html

WORKDIR /tmp/collections 

ENTRYPOINT ["newman"]

COPY . .