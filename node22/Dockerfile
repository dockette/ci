FROM dockette/alpine:edge

ENV NODEJS_VERSION=22.8.0

RUN echo '@community http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git ca-certificates curl openssh tzdata make direnv && \
    # NODEJS ###################################################################
    apk add --update nodejs-current@community npm@community && \
    corepack enable && corepack prepare pnpm@latest --activate && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD ["nodejs"]
