FROM ubuntu:lastest

# Install Java.
RUN apt-get update && apt-get install -q -y \
    openjdk-8-jdk \
    apt-transport-https \
    gnupg2 \
    ca-certificates &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# Install gauge
RUN apt-key adv --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys 023EDB0B && \
    echo deb https://dl.bintray.com/gauge/gauge-deb stable main | tee -a /etc/apt/sources.list

RUN apt-get update && apt-get install gauge &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# Install gauge plugins
RUN gauge install java && \
    gauge install screenshot

ENV PATH=$HOME/.gauge:$PATH