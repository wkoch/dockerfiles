FROM wkoch/alpine

# Add user
RUN addgroup -g 1000 node &&\
    adduser -u 1000 -G node -s /bin/sh -D node

RUN apk add --no-cache nodejs-current npm &&\
    npm update -g &&\
    npm cache clean -f &&\
    rm -rf /var/cache/* &&\
    mkdir /var/cache/apk

# Change user
USER node

RUN node -v &&\
    npm -v

CMD [ "node" ]