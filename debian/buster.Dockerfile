FROM debian:buster-slim
MAINTAINER Patrick Büch <dh@paco.pl31.de>

ENV DEBIAN_FRONTEND noninteractive

COPY buster.files/ /

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        apt-utils \
        localepurge \
        curl \
        nano \
        git
