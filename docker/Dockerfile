FROM debian:stretch
LABEL maintainer="PRiVCY Developers <dev@privcy.org>"
LABEL description="Dockerised PRiVCYCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
