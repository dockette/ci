FROM dockette/alpine:3.22

ENV NODEJS_VERSION=23.7.0

RUN echo '@community http://dl-cdn.alpinelinux.org/alpine/v3.22/community' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git ca-certificates curl openssh tzdata make direnv && \
    # NODEJS ###################################################################
    apk add --update nodejs-current npm pnpm@community && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD ["node"]
