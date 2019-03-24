FROM debian:stretch-slim

ENV DEBIAN_FRONTEND noninteractive

# Base System
RUN echo "Updating system." &&\
    apt-get update -qqy &&\
    apt-get upgrade -qqy &&\
    echo "Installing tools." &&\
    apt-get install -qqy git gnupg curl wget &&\
    echo "Creating user." &&\
    groupadd --gid 1000 wkoch &&\
    useradd --uid 1000 --gid wkoch \
    --shell /bin/bash -p '*' --create-home wkoch &&\
    echo "Cleaning up." &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# NodeJS
RUN echo "Installing NodeJS." &&\
    curl -sL https://deb.nodesource.com/setup_11.x | bash - &&\
    apt-get update -qqy &&\
    apt-get install -qqy nodejs &&\
    echo "Cleaning up." &&\
    npm update -g &&\
    npm install -g pnpm &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# Visual Studio Code
RUN wget -O vscode-amd64.deb  https://go.microsoft.com/fwlink/?LinkID=760868 &&\
    apt-get update -qqy &&\
    apt-get install -qqy \
    libasound2 libatk1.0-0 libcairo2 libcanberra-gtk-module \
    libcups2 libexpat1 libfontconfig1 libfreetype6 libgconf-2-4 \
    libgtk2.0-0 libnotify4 libnss3 libpango-1.0-0 libsecret-1-0 \
    libx11-xcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 \
    libxfixes3 libxi6 libxkbfile1 libxrandr2 libxrender1 libxss1 \
    libxtst6  &&\
    dpkg -i vscode-amd64.deb &&\
    apt-get install -qqyf &&\
    echo "Cleaning up." &&\
    rm vscode-amd64.deb &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# Visual Studio Code
# RUN echo "Installing VS Code." &&\
#        curl -sSL \
#            https://packages.microsoft.com/keys/microsoft.asc \
#            | gpg --dearmor | apt-key add - &&\
#        echo "deb [arch=amd64] \
#            https://packages.microsoft.com/repos/vscode stable main" \
#            > /etc/apt/sources.list.d/vscode.list &&\
#        apt-get update -qqy &&\
#        apt-get install -qqy code \
#        libasound2 libatk1.0-0 libcairo2 libcanberra-gtk-module \
#        libcups2 libexpat1 libfontconfig1 libfreetype6 libgconf-2-4 \
#        libgtk2.0-0 libnotify4 libnss3 libpango-1.0-0 libsecret-1-0 \
#        libx11-xcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 \
#        libxfixes3 libxi6 libxkbfile1 libxrandr2 libxrender1 libxss1 \
#        libxtst6  &&\
#    echo "Cleaning up." &&\
#        rm -rf /var/lib/apt/lists/* &&\
#        rm -rf /tmp/*

# versions of local tools
RUN node -v
RUN npm -v
RUN code -v

CMD ["code, "--verbose"]
