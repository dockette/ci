FROM dockette/alpine

MAINTAINER Milan Sulc <sulcmil@gmail.com>

ADD conf/ci.ini /etc/php7/conf.d/

ENV PHP_DIR=/usr/bin
ENV PHP_BIN=$PHP_DIR/php
ENV PHPXD_BIN=$PHP_DIR/phpxd
ENV COMPOSER_DIR=/usr/bin/
ENV COMPOSER_BIN=$COMPOSER_DIR/composer
ENV TZ=Europe/Prague

RUN echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
    echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories && \
    # DEPENDENCIES #############################################################
    apk update && apk upgrade && apk --no-cache add bash git ca-certificates curl openssh && \
    # PHP ######################################################################
    apk add \
        php7 \
        php7-amqp@testing \
        php7-apcu@testing \
        php7-bcmath \
        php7-bz2 \
        php7-calendar \
        php7-cgi \
        php7-common \
        php7-ctype \
        php7-curl \
        php7-gettext \
        php7-gd \
        php7-iconv \
        php7-imap \
        php7-intl \
        php7-json \
        php7-ldap \
        php7-mbstring \
        php7-mcrypt \
        php7-memcached@testing \
        php7-mongodb@testing \
        php7-mysqli \
        php7-mysqlnd@community \
        php7-openssl \
        php7-pdo \
        php7-pdo_mysql \
        php7-pdo_pgsql \
        php7-pdo_sqlite \
        php7-phar \
        php7-pgsql \
        php7-redis@testing \
        php7-sqlite3 \
        php7-ssh2@testing \
        php7-xdebug \
        php7-xmlrpc \
        php7-xsl \
        php7-zip && \
        sed -i -- 's/zend/;zend/g' /etc/php7/conf.d/xdebug.ini && \
        echo "php -dzend_extension=xdebug.so" >> $PHPXD_BIN && \
        chmod +x $PHPXD_BIN && \
    # SYMLINKS PHP7 -> PHP #####################################################
    ln -s /etc/php7 /etc/php && \
    ln -s /usr/bin/php7 /usr/bin/php && \
    ln -s /usr/lib/php7 /usr/lib/php && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=$COMPOSER_DIR --filename=composer && \
    composer global require "hirak/prestissimo:^0.3" && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD php
