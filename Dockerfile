FROM        node:7.9.0-alpine

MAINTAINER  Mario Álvarez <ahoy@m4grio.me>

ENV         ENDURO_VERSION 1.4.16

RUN         \
            set -xe ;\
            apk add --no-cache --virtual git .build-deps

RUN         \
            set -xe ;\
            npm install -g enduro@$ENDURO_VERSION

RUN         \
            set -xe ;\
            mkdir -vp /opt/app

WORKDIR     /opt/app

EXPOSE      3000
EXPOSE      5000

CMD         ["enduro"]
