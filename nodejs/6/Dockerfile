FROM dockette/edge

MAINTAINER Milan Sulc <sulcmil@gmail.com>

ENV NODEJS_VERSION=6.10.0

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git openssh curl && \
    # NODEJS ###################################################################
    apk add --update nodejs-npm@edge && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD nodejs
