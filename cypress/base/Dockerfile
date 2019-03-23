FROM node:latest

RUN apt-get update && \
  apt-get upgrade -qqy && \
  apt-get install -y \
  libgtk2.0-0 \
  libnotify-dev \
  libgconf-2-4 \
  libnss3 \
  libxss1 \
  libasound2 \
  xvfb && \
  npm update -g

# versions of local tools
RUN node -v
RUN npm -v
RUN yarn -v
