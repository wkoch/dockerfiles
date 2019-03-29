FROM wkoch/debian

# Add user
RUN groupadd --gid 1000 node &&\
    useradd --uid 1000 --gid node --shell /bin/bash --create-home node

# Install latest Node.js
RUN apt-get update -qqy && apt-get install -qqy curl &&\
    curl -sL https://deb.nodesource.com/setup_11.x | bash - &&\
    apt-get update -qqy && apt-get install -qqy nodejs &&\
    apt-get remove -qqy curl &&\
    apt-get autoremove -qqy && apt-get clean -qqy &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# Update NPM
RUN npm update -g &&\
    npm cache clean -f

# Change user
USER node

RUN node -v &&\
    npm -v

CMD [ "node" ]