FROM wkoch/alpine-node

USER root

# Install dependencies and Chromium
RUN apk add --no-cache chromium &&\
    rm -rf /var/cache/* &&\
    mkdir /var/cache/apk

ENV TAIKO_SKIP_CHROMIUM_DOWNLOAD=true
ENV TAIKO_BROWSER_PATH=/usr/bin/chromium-browser

# Change user
# USER node

RUN node -v &&\
    npm -v