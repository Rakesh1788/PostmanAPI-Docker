FROM ubuntu:14.04.2
MAINTAINER Postman Labs <help@getpostman.com>

# Install curl and npm
RUN apt-get install -y curl;

RUN curl -sS https://deb.nodesource.com/setup_8.x | sudo -E bash -

RUN apt-get clean && apt-get upgrade -y && apt-get update -y --fix-missing && apt-get install -y nodejs

# Set node version
ENV NODE_VERSION 8

# Set locale
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

# Install node
RUN npm install -g n;
RUN n ${NODE_VERSION};

# Set newman version
ENV NEWMAN_VERSION 3.9.2

# Install newman
RUN npm install -g newman@${NEWMAN_VERSION};


WORKDIR '/etc/newman'

COPY collection*.json ./

ENTRYPOINT ["newman"]
