FROM node:node_ubuntu1404

WORKDIR '/tmp/collections'

COPY collection*.json ./

ENTRYPOINT ["newman"]
