FROM dockette/alpine:3.8

ENV NODEJS_VERSION=8.14.0

RUN echo '@main http://dl-cdn.alpinelinux.org/alpine/v3.8/main' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git ca-certificates curl openssh tzdata make && \
    # NODEJS ###################################################################
    apk add --update nodejs-current@main && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD node
