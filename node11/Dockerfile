FROM dockette/alpine:3.9

ENV NODEJS_VERSION=11.3.0

RUN echo '@community http://dl-cdn.alpinelinux.org/alpine/v3.9/community' >> /etc/apk/repositories && \
    echo '@v314 http://dl-cdn.alpinelinux.org/alpine/v3.14/community' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git ca-certificates curl openssh tzdata make direnv@v314 && \
    # NODEJS ###################################################################
    apk add --update nodejs-current@community npm@community && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD node
