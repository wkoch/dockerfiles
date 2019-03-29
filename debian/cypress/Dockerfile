FROM wkoch/debian-node

USER root

# Install Chromium and dependencies
RUN apt-get update -qqy &&\
    \
    apt-get install -qqy \
    chromium \
    libasound2 \
    libgconf-2-4 \
    libgtk2.0-0 \
    libnotify-dev \
    libnss3 \
    libxss1 \
    xvfb &&\
    \
    apt-get autoremove && apt-get clean &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# "fake" dbus address to prevent errors
# https://github.com/SeleniumHQ/docker-selenium/issues/87
ENV DBUS_SESSION_BUS_ADDRESS=/dev/null
# avoid million NPM install messages
ENV npm_config_loglevel warn
# allow installing when the main user is root
ENV npm_config_unsafe_perm true

RUN npm install -g cypress && npm cache clean

USER node

# versions of local tools
RUN node -v
RUN npm -v
RUN chromium --version

# a few environment variables to make NPM installs easier
# good colors for most applications
ENV TERM xterm