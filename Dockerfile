FROM ubuntu:14.04.2

WORKDIR /etc/newman

COPY collection*.json ./

RUN npm install -g newman@${NEWMAN_VERSION};

ENTRYPOINT ["newman"]
