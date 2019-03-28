FROM debian:stretch-slim

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update &&\
    apt-get upgrade -qqy &&\
    apt-get install -y --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    curl \
    git \
    gnupg \
    xz-utils &&\
    groupadd --gid 1000 wkoch &&\
    useradd --uid 1000 --gid wkoch --shell /bin/bash -p '*' --create-home wkoch &&\
    rm -rf /var/lib/apt/lists/*

CMD /bin/bash
