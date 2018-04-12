FROM ubuntu
RUN  apt-get update \
    && apt-get install git \
    && git clone https://github.com/gaozheyuan13/coldpurse.git \
    && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash \
    && command -v nvm \
    && nvm use node \
    && cd coldpurse \
    && npm install enduro -g \
    && enduro dev 

EXPOSE 3000 5000  
