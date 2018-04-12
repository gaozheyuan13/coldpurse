FROM ubuntu
RUN apt-get update \
    && apt-get install -y git curl sudo \
    && useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo \
    && sudo -i \
    && git clone https://github.com/gaozheyuan13/coldpurse.git \
    && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash \
    && export NVM_DIR="$HOME/.nvm" \
    && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" \
    && nvm install stable \
    && command -v nvm \
    && nvm use node \
    && cd coldpurse \
    && npm install enduro -g \
    && enduro dev 

EXPOSE 3000 5000  

USER docker
CMD /bin/bash
