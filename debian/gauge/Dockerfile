FROM wkoch/debian-node

USER root

# Install dependencies and Gauge
RUN apt-get update -qqy &&\
    \
    apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    chromium \
    gnupg2 \
    libasound2 \
    libgconf-2-4 \
    libgtk2.0-0 \
    libnotify-dev \
    libnss3 \
    libxss1 &&\
    apt-get autoremove -qqy && apt-get clean -qqy &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

ENV TAIKO_SKIP_CHROMIUM_DOWNLOAD=true
ENV TAIKO_BROWSER_PATH=/usr/bin/chromium

# Fix folder permissions
RUN chmod 1777 /tmp &&\
    chmod 775 /usr

# Change user
USER node

RUN node -v &&\
    npm -v

ENV PATH=$HOME/.gauge:$PATH