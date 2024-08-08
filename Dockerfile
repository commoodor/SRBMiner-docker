#
# Dockerfile for SRBMiner-Multi, https://github.com/doktor83/SRBMiner-Multi
# see entrypoint
#
FROM debian:stable-slim

# Define the version as a build argument
ARG VERSION=2.6.1

# Update and install dependencies
RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y install curl xz-utils wget \
    && cd /opt \
    && curl -L https://github.com/doktor83/SRBMiner-Multi/releases/download/${VERSION}/SRBMiner-Multi-${VERSION//./-}-Linux.tar.gz -o SRBMiner-Multi.tar.gz \
    && tar xf SRBMiner-Multi.tar.gz \
    && rm -rf SRBMiner-Multi.tar.gz \
    && mv /opt/SRBMiner-Multi-${VERSION//./-}/ /opt/SRBMiner/ \
    && apt-get -y purge xz-utils \
    && apt-get -y autoremove --purge \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

# Set working directory
WORKDIR /opt/SRBMiner/

# Copy entrypoint script
COPY entrypoint .

# Make entrypoint executable
RUN chmod +x entrypoint

# Set entrypoint
ENTRYPOINT ["./entrypoint"]
