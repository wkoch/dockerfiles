FROM node:latest

RUN apt-get update -qqy && \
  apt-get upgrade -qqy && \
  apt-get install -qqy libgtk2.0-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 xvfb

# avoid million NPM install messages
ENV npm_config_loglevel warn
# allow installing when the main user is root
ENV npm_config_unsafe_perm true

RUN npm update -g && \
  npm install -g cypress

# versions of local tools
RUN node -v
RUN npm -v