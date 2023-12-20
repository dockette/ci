FROM dockette/alpine:3.10

ENV NODEJS_VERSION=10.19.0

RUN apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git ca-certificates curl openssh tzdata make direnv && \
    # NODEJS ###################################################################
    apk add --update nodejs npm && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD node
