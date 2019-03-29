FROM wkoch/debian-node

USER root

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
    apt-get autoremove && apt-get clean &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# Fix folder permissions
RUN chmod 1777 /tmp &&\
    chmod 775 /usr

# Change user
USER node

ENV PATH=$HOME/.gauge:$PATH