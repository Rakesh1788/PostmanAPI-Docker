FROM ubuntu:14.04.2

WORKDIR /tmp/collections

COPY collection*.json ./

ENTRYPOINT ["newman"]
