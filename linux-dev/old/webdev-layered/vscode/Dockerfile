FROM node

RUN apt-get update &&\
    curl -sSL \
    https://packages.microsoft.com/keys/microsoft.asc \
    | gpg --dearmor | apt-key add - &&\
    echo "deb [arch=amd64] \
    https://packages.microsoft.com/repos/vscode stable main" \
    > /etc/apt/sources.list.d/vscode.list &&\
    apt-get update &&\
    apt-get -y install --no-install-recommends \
    code \
    libasound2 \
    libatk1.0-0 \
    libcairo2 \
    libcanberra-gtk-module \
    libcups2 \
    libexpat1 \
    libfontconfig1 \
    libfreetype6 \
    libgconf-2-4 \
    libgtk2.0-0 \
    libnotify4 \
    libnss3 \
    libpango-1.0-0 \
    libsecret-1-0 \
    libx11-xcb1 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxext6 \
    libxfixes3 \
    libxi6 \
    libxkbfile1 \
    libxrandr2 \
    libxrender1 \
    libxss1 \
    libxtst6 &&\
    \
    echo "Cleaning up." &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

CMD su -c "code --verbose" wkoch
