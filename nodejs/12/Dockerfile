FROM dockette/alpine:3.10

MAINTAINER Milan Sulc <sulcmil@gmail.com>

ENV NODEJS_VERSION=12.4.0

RUN echo '@community http://nl.alpinelinux.org/alpine/v3.10/community' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git openssh curl && \
    # NODEJS ###################################################################
    apk add --update nodejs-current@community npm@community && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD nodejs
