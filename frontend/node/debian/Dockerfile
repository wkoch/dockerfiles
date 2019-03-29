FROM wkoch/debian

# Add user
RUN groupadd --gid 1000 node &&\
    useradd --uid 1000 --gid node --shell /bin/bash --create-home node

# Install latest Node.js
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - &&\
    apt-get update && apt-get install -y nodejs &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# Update NPM
RUN npm update -g &&\
    npm cache clean

# Change user
USER node

CMD [ "node" ]