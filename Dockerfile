#
# Dockerfile for SRBMiner-Multi, https://github.com/doktor83/SRBMiner-Multi
# see entrypoint
#
FROM debian:stable-slim

RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y install curl xz-utils wget \
    && cd /opt \
    && curl -L https://github.com/doktor83/SRBMiner-Multi/releases/download/2.4.9/SRBMiner-Multi-2-4-9-Linux.tar.gz -o SRBMiner-Multi.tar.gz \
    && tar xf SRBMiner-Multi.tar.gz \
    && rm -rf SRBMiner-Multi.tar.gz \
    && mv /opt/SRBMiner-Multi-2-4-9/ /opt/SRBMiner/ \
    && apt-get -y purge xz-utils \
    && apt-get -y autoremove --purge \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

WORKDIR /opt/SRBMiner/
COPY entrypoint .
RUN chmod +x entrypoint
ENTRYPOINT ["./entrypoint"]
