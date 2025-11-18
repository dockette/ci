FROM dockette/alpine:3.22

ENV NODEJS_VERSION=24.1.0

RUN echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    # DEPENDENCIES #############################################################
    apk add --update bash git ca-certificates curl openssh tzdata make direnv && \
    # NODEJS ###################################################################
    apk add --update nodejs-current@edge npm pnpm@edge && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD ["node"]
