FROM node:11-slim

# Install Java.
RUN \
    apt-get update -qqy && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    libasound2 \
    libgconf-2-4 \
    libgtk2.0-0 \
    libnotify-dev \
    libnss3 \
    libxss1 &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# Install gauge
RUN \
    apt-key adv --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys 023EDB0B &&\
    echo deb https://dl.bintray.com/gauge/gauge-deb stable main | tee -a /etc/apt/sources.list &&\
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - &&\
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list &&\
    curl -sL https://deb.nodesource.com/setup_11.x | bash -

RUN \
    apt-get update -qqy &&\
    apt-get install -qqy \
    nodejs \
    gauge \
    yarn &&\
    rm -rf /var/lib/apt/lists/*

# Install gauge plugins
RUN \
    gauge install screenshot
USER node

ENV PATH=$HOME/.gauge:$PATH