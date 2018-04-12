FROM ubuntu
RUN    git clone https://github.com/gaozheyuan13/coldpurse.git \
    && cd coldpurse \
    && enduro dev 

EXPOSE 3000 5000  
