FROM dockette/alpine:3.13

ENV NODEJS_VERSION=15.5.1

RUN echo '@community http://dl-cdn.alpinelinux.org/alpine/v3.13/community' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git ca-certificates curl openssh tzdata make && \
    # NODEJS ###################################################################
    apk add --update nodejs-current@community npm@community && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD nodejs
