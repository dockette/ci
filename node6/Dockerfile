FROM dockette/alpine:3.6

ENV NODEJS_VERSION=6.10.3

RUN echo '@main http://dl-cdn.alpinelinux.org/alpine/v3.6/main' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git ca-certificates curl openssh tzdata make direnv && \
    # NODEJS ###################################################################
    apk add --update nodejs-npm@main && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD node
