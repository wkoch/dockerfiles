FROM base-os

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash - &&\
    apt-get update &&\
    apt-get install -y --no-install-recommends nodejs &&\
\
    echo "Cleaning up." &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

CMD [ "node" ]
