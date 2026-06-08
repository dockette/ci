FROM dockette/alpine:3.23

ENV NODEJS_VERSION=24.15.0

RUN echo '@community http://dl-cdn.alpinelinux.org/alpine/v3.23/community' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git ca-certificates curl openssh tzdata make direnv && \
    # NODEJS ###################################################################
    apk add --update nodejs-current@community npm@community pnpm@community && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD ["node"]
