FROM debian:stretch-slim

LABEL maintainer="williamkoch@outlook.com"

RUN DEBIAN_FRONTEND=noninteractive \
    LC_ALL=C \
    LANG=pt_BR.UTF-8 \
    LANGUAGE=pt_BR:pt:en \
    HOME=/home/wkoch \
    TERM=xterm &&\
    groupadd --gid 1000 wkoch &&\
    useradd --uid 1000 --gid wkoch --shell /bin/bash --create-home wkoch &&\
    apt-get update &&\
    apt-get upgrade -y &&\
\
    echo "Setting and generating locales." &&\
    apt-get install -y --no-install-recommends locales &&\
    echo LANG >> /etc/environment &&\
    echo LANGUAGE >> /etc/environment &&\
    echo "pt_BR.UTF-8 UTF-8" >> /etc/locale.gen &&\
    echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen &&\
    echo "pt_BR pt_BR.UTF-8" >> /etc/locale.alias &&\
    locale-gen &&\
\
    echo "Installing basic packages." &&\
	apt-get install -y --no-install-recommends \
        gnupg git apt-transport-https sudo curl ca-certificates &&\
    echo "Installing VS Code." &&\
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg &&\
    mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg &&\
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list &&\
    apt-get update && apt-get install -y --no-install-recommends \
        code libxss1 libgtk2.0-0 libxss-dev libgconf-2-4 libasound2 &&\
\
    echo "Cleaning up." &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

CMD su -c "code --verbose" - node
