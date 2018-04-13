FROM        node:7.9.0-alpine

RUN         \
            set -xe ;\
            apk add --no-cache --virtual git .build-deps

RUN         \
            set -xe ;\
            npm install -g enduro

EXPOSE      3000
EXPOSE      5000

CMD         ["enduro"]
