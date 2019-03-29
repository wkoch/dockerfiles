FROM wkoch/debian-node

USER root

ENV TAIKO_SKIP_CHROMIUM_DOWNLOAD=true
ENV TAIKO_BROWSER_PATH=/usr/bin/chromium

# Install dependencies and Gauge
RUN apt-get update -qqy &&\
    \
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
    libxss1 &&\
    \
    apt-key adv --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys 023EDB0B &&\
    echo deb https://dl.bintray.com/gauge/gauge-deb stable main | tee -a /etc/apt/sources.list &&\
    apt-get update -qqy && apt-get install -qqy gauge &&\
    npm install -g taiko &&\
    npm cache clean -f &&\
    apt-get autoremove -qqy && apt-get clean -qqy &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# Fix folder permissions
RUN chmod 1777 /tmp &&\
    chmod 775 /usr

# Change user
USER node

RUN node -v &&\
    npm -v &&\
    gauge -v &&\
    taiko -v

ENV PATH=$HOME/.gauge:$PATH