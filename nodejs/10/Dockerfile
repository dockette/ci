FROM dockette/alpine:edge

MAINTAINER Milan Sulc <sulcmil@gmail.com>

ENV NODEJS_VERSION=10.14.1

RUN echo '@community http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git openssh curl && \
    # NODEJS ###################################################################
    apk add --update nodejs-current@community && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD nodejs
