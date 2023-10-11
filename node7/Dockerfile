FROM dockette/alpine:3.6

ENV NODEJS_VERSION=7.10.1

RUN echo '@community http://dl-cdn.alpinelinux.org/alpine/v3.6/community' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git ca-certificates curl openssh tzdata make && \
    # NODEJS ###################################################################
    apk add --update nodejs-current-npm@community && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD node
