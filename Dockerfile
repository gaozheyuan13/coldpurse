FROM ubuntu
RUN  apt-get update \
    && cd coldpurse \
    && enduro dev 

EXPOSE 3000 5000  
