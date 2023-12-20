FROM dockette/alpine:3.12

ENV NODEJS_VERSION=12.18.3

RUN echo '@community http://dl-cdn.alpinelinux.org/alpine/v3.12/community' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git ca-certificates curl openssh tzdata make direnv && \
    # NODEJS ###################################################################
    apk add --update nodejs-current npm && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD node
