FROM dockette/alpine:3.15

ENV NODEJS_VERSION=17.9.0

RUN echo '@community http://dl-cdn.alpinelinux.org/alpine/v3.15/community' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git ca-certificates curl openssh tzdata make && \
    # NODEJS ###################################################################
    apk add --update nodejs-current@community npm@community && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD nodejs
