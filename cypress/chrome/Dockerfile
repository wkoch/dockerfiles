FROM wkoch/cypress

USER root

# install Chromebrowser
RUN \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
    apt-get update && \
    apt-get install -y dbus-x11 google-chrome-stable apt-transport-https &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# Install gauge
RUN \
    apt-key adv --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys 023EDB0B && \
    echo deb https://dl.bintray.com/gauge/gauge-deb stable main | tee -a /etc/apt/sources.list && \
    apt-get update -qqy && \
    apt-get install -qqy gauge &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*


# "fake" dbus address to prevent errors
# https://github.com/SeleniumHQ/docker-selenium/issues/87
ENV DBUS_SESSION_BUS_ADDRESS=/dev/null

# avoid million NPM install messages
ENV npm_config_loglevel warn
# allow installing when the main user is root
ENV npm_config_unsafe_perm true

RUN yarn global add cypress

# versions of local tools
RUN node -v
RUN npm -v
RUN yarn -v
RUN google-chrome --version

# a few environment variables to make NPM installs easier
# good colors for most applications
ENV TERM xterm