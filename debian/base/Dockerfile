FROM debian:stretch-slim

# Update OS
RUN apt-get update -qqy && apt-get upgrade -qqy &&\
    apt-get autoremove && apt-get clean &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*