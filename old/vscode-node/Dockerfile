FROM debian:stretch-slim

LABEL maintainer="williamkoch@outlook.com"

RUN DEBIAN_FRONTEND=noninteractive LC_ALL=C LANG=pt_BR.UTF-8 LANGUAGE=pt_BR:pt:en &&\
    groupadd --gid 1000 wkoch &&\
    useradd --uid 1000 --gid wkoch --shell /bin/bash --create-home wkoch &&\
    apt-get update &&\
    apt-get upgrade -y &&\
    apt-get install -y --no-install-recommends locales &&\
    echo LANG >> /etc/environment &&\
    echo LANGUAGE >> /etc/environment &&\
    echo "pt_BR.UTF-8 UTF-8" >> /etc/locale.gen &&\
    echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen &&\
    echo "pt_BR pt_BR.UTF-8" >> /etc/locale.alias &&\
    locale-gen &&\
    echo "Installing basic packages." &&\
	apt-get update && apt-get install -y --no-install-recommends \
        gnupg git apt-transport-https sudo curl ca-certificates xz-utils &&\
\
    echo "Installing VS Code." &&\
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg &&\
    mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg &&\
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list &&\
    apt-get update && apt-get install -y --no-install-recommends \
        code libxss1 libgtk2.0-0 libxss-dev libgconf-2-4 libasound2 &&\
\
    NODE_VERSION='9.5.0' ARCH='x86' &&\
    set -x &&\
    curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz" &&\
    tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner &&\
    rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" &&\
    ln -s /usr/local/bin/node /usr/local/bin/nodejs &&\
\
    YARN_VERSION='1.3.2' &&\
    curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz" &&\
    mkdir -p /opt/yarn &&\
    tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 &&\
    ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn &&\
    ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg &&\
    rm yarn-v$YARN_VERSION.tar.gz &&\
\
    echo "Cleaning up." &&\
    apt-get purge -y --auto-remove xz-utils &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*
    
ENV PATH $PATH:/home/wkoch/bin:/usr/local/bin
ENV HOME /home/wkoch
ENV TERM=xterm

CMD su -c "code --verbose" - wkoch
