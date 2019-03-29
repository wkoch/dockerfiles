FROM wkoch/debian-node

# Add Gauge repo to apt
RUN apt-key adv --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys 023EDB0B &&\
    echo deb https://dl.bintray.com/gauge/gauge-deb stable main | tee -a /etc/apt/sources.list

# Install dependencies, Chromium and Gauge
RUN apt-get update -qqy &&\
    apt-get install -qqy \
    apt-transport-https \
        ca-certificates \
        curl \
        gnupg2 \
        libasound2 \
        libgconf-2-4 \
        libgtk2.0-0 \
        libnotify-dev \
        libnss3 \
        libxss1 \
        chromium \
        gauge &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# Install Taiko
ENV TAIKO_SKIP_CHROMIUM_DOWNLOAD=true
ENV TAIKO_BROWSER_PATH=/usr/bin/chromium
RUN npm install -g taiko &&\
    npm cache clean

# Fix folder permissions
RUN chmod 1777 /tmp &&\
    chmod 1777 /usr

# Change user
USER node

ENV PATH=$HOME/.gauge:$PATH