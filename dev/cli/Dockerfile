FROM alpine:edge

RUN addgroup -g 1000 wkoch \
    && adduser -u 1000 -G wkoch -s /bin/sh -D wkoch \
    && apk add --no-cache yarn fish fish-tools unrar \
    && npm install -g npm

# versions of local tools
RUN node -v
RUN npm -v
RUN yarn -v

CMD [ "fish" ]
