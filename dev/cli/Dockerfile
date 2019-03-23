FROM alpine:edge

RUN addgroup -g 1000 wkoch \
    && adduser -u 1000 -G wkoch -s /bin/sh -D wkoch \
    && apk add --no-cache fish fish-tools unrar

CMD [ "fish" ]
