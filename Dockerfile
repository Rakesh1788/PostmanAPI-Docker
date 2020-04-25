FROM ubuntu:14.04.2

WORKDIR /etc/newman

COPY . .

ENTRYPOINT ["newman"]
