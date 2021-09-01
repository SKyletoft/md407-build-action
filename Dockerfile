FROM ubuntu:hirsute

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y binutils-arm-none-eabi gcc-arm-none-eabi libstdc++-arm-none-eabi-newlib make git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
