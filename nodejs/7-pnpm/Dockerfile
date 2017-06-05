FROM dockette/edge

MAINTAINER Milan Sulc <sulcmil@gmail.com>

ENV NODEJS_VERSION=7.10.0

RUN echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git openssh curl && \
    # NODEJS ###################################################################
    apk add --update nodejs-current-npm@community && \
    npm --silent install --global --depth 0 pnpm && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD nodejs
