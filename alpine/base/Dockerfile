FROM alpine:edge

# Update OS
RUN apk update --no-cache &&\
    apk upgrade --no-cache &&\
    rm -rf /var/cache/* &&\
    mkdir /var/cache/apk