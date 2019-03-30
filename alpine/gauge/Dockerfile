FROM wkoch/alpine-node

USER root

# Install dependencies and Chromium
RUN apk add --no-cache \
    chromium \
    gtk+2.0 \
    libnotify-dev \
    gnupg \
    harfbuzz \
    xvfb \
    nss &&\
    rm -rf /var/cache/* &&\
    mkdir /var/cache/apk


ENV TAIKO_SKIP_CHROMIUM_DOWNLOAD=true
ENV TAIKO_BROWSER_PATH=/usr/bin/chromium-browser

# Fix folder permissions
RUN chmod 1777 /tmp &&\
    chmod 775 /usr

# Change user
USER node

RUN node -v &&\
    npm -v

ENV PATH=$HOME/.gauge:$PATH