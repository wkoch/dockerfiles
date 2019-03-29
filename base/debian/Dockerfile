FROM debian:stretch-slim

# Update OS
RUN apt-get update -qqy && apt-get upgrade -qqy &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*