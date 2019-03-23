FROM node:latest

RUN apt-get update && \
  apt-get upgrade && \
  apt-get install -y \
  libgtk2.0-0 \
  libnotify-dev \
  libgconf-2-4 \
  libnss3 \
  libxss1 \
  libasound2 \
  xvfb && \
  npm update -g npm

# versions of local tools
RUN node -v
# NPM version should already be pretty new (> 6.4.0)
RUN npm -v
RUN yarn -v
