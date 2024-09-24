FROM dockette/alpine:3.10

ENV NODEJS_VERSION=10.19.0

RUN echo '@v314 http://dl-cdn.alpinelinux.org/alpine/v3.14/community' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git ca-certificates curl openssh tzdata make direnv@v314 && \
    # NODEJS ###################################################################
    apk add --update nodejs npm && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD ["node"]
