# Base image
FROM debian:stable-slim

# Define the version as a build argument
ARG VERSION

# Update, install dependencies, and fix SSL issues
RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y install --no-install-recommends \
        curl \
        xz-utils \
        wget \
        ca-certificates \
    && VERSION_HYPHEN=$(echo ${VERSION} | sed 's/\./-/g') \
    && curl -L https://github.com/doktor83/SRBMiner-Multi/releases/download/${VERSION}/SRBMiner-Multi-${VERSION_HYPHEN}-Linux.tar.gz -o /opt/SRBMiner-Multi.tar.gz \
    && tar -xf /opt/SRBMiner-Multi.tar.gz -C /opt \
    && mv /opt/SRBMiner-Multi-${VERSION_HYPHEN} /opt/SRBMiner \
    && rm -rf /opt/SRBMiner-Multi.tar.gz \
    && apt-get -y purge xz-utils wget \
    && apt-get -y autoremove --purge \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

# Set working directory
WORKDIR /opt/SRBMiner/

# Copy entrypoint script and make it executable
COPY entrypoint .
RUN chmod +x entrypoint

# Set entrypoint
ENTRYPOINT ["./entrypoint"]
