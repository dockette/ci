FROM dockette/alpine:3.21

ENV NODEJS_VERSION=22.15.1

RUN echo '@community http://dl-cdn.alpinelinux.org/alpine/v3.21/community' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git ca-certificates curl openssh tzdata make direnv && \
    # NODEJS ###################################################################
    apk add --update nodejs npm && \
    corepack enable && corepack prepare pnpm@latest --activate && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD ["nodejs"]
