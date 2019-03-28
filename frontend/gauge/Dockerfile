FROM ubuntu:latest

# Install Java.
RUN apt-get update -qqy && apt-get install -qqy \
    openjdk-8-jdk \
    apt-transport-https \
    gnupg2 \
    ca-certificates &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# Install gauge
RUN apt-key adv --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys 023EDB0B &&\
    echo deb https://dl.bintray.com/gauge/gauge-deb stable main | tee -a /etc/apt/sources.list &&\
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - &&\
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list &&\
    curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -

RUN apt-get update -qqy && apt-get install -qqy nodejs gauge yarn &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# Install gauge plugins
RUN gauge install java &&\
    gauge install screenshot

ENV PATH=$HOME/.gauge:$PATH