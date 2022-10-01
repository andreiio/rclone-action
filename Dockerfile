FROM alpine:latest

ARG RCLONE_VERSION=v1.59.2

RUN apk add --no-cache \
    ca-certificates \
    curl \
    gzip \
    tar \
    zip

RUN curl -sSOL https://github.com/rclone/rclone/releases/download/${RCLONE_VERSION}/rclone-${RCLONE_VERSION}-linux-amd64.zip && \
    unzip -q rclone-${RCLONE_VERSION}-linux-amd64.zip && \
    mv rclone-${RCLONE_VERSION}-linux-amd64/rclone /usr/local/bin/rclone && \
    rm -rf rclone-${RCLONE_VERSION}-linux-amd64{,.zip}

ENTRYPOINT ["rclone"]
