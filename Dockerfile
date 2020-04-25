FROM node:postman/newman_ubuntu1404

WORKDIR '/tmp/collections'

COPY collection*.json .

ENTRYPOINT ["newman"]

COPY . .
