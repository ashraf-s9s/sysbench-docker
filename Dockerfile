FROM debian:latest
MAINTAINER Severalnines <ashraf@severalnines.com>

RUN apt-get update && \
        apt-get -y install curl

RUN curl -s https://packagecloud.io/install/repositories/akopytov/sysbench/script.deb.sh | bash

RUN apt-get -y install sysbench && \
        apt-get clean
