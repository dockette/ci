FROM dockette/alpine:3.19

ENV NODEJS_VERSION=21.4.0

RUN echo '@community http://dl-cdn.alpinelinux.org/alpine/v3.19/community' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git ca-certificates curl openssh tzdata make direnv && \
    # NODEJS ###################################################################
    apk add --update nodejs-current@community npm@community && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD nodejs
