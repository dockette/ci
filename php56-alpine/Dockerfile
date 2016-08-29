FROM alpine:edge

MAINTAINER Milan Sulc <sulcmil@gmail.com>

ADD conf/tester.ini /etc/php5/mods-available/
ADD bin/php-enable-xdebug /usr/bin/
ADD bin/php-disable-xdebug /usr/bin/

RUN echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
    apk update && apk upgrade && apk --no-cache add ca-certificates wget && \
    apk add \
        php5 \
        php5-cli \
        php5-common \
        php5-cgi \
        php5-curl \
        php5-imap \
        php5-pgsql \
        php5-mysql \
        php5-sqlite3 \
        php5-gd \
        php5-intl \
        php5-geoip@testing \
        php5-memcached@testing \
        php5-mcrypt \
        php5-xsl \
        php5-imagick \
        php5-ldap \
        php5-redis@testing \
        php5-xmlrpc \
        php5-ssh2@testing \
        php5-apcu \
        php5-xdebug && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-php5-mongo/master/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-php5-mongo/releases/download/1.16.4-r0/php5-mongo-1.6.14-r0.apk && \
    apk add php5-mongo-1.6.14-r0.apk && \
    apk del wget ca-certificates php5-mongo-1.6.14-r0.apk sgerrand.rsa.pub && \
    rm -rf /var/cache/apk/*
