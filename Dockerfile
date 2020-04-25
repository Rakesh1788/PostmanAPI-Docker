FROM node_ubuntu1404:latest

WORKDIR /tmp/collections

COPY collection*.json ./

ENTRYPOINT ["newman"]
