FROM node:current-slim

USER root

RUN \
  apt-get update -qqy && \
  apt-get upgrade -qqy && \
  apt-get install -qqy libgtk2.0-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 xvfb &&\
  rm -rf /var/lib/apt/lists/* &&\
  rm -rf /tmp/*

# versions of local tools
RUN node -v
RUN npm -v
RUN yarn -v