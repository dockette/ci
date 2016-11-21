FROM dockette/alpine

MAINTAINER Milan Sulc <sulcmil@gmail.com>

ADD conf/ci.ini /etc/php7/conf.d/

ENV PHP_DIR=/usr/bin
ENV PHP_BIN=$PHP_DIR/php
ENV PHPXD_BIN=$PHP_DIR/phpxd
ENV COMPOSER_DIR=/usr/bin/
ENV COMPOSER_BIN=$COMPOSER_DIR/composer

RUN echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
    # DEPENDENCIES #############################################################
    apk update && apk upgrade && apk --no-cache add bash git ca-certificates curl && \
    # PHP ######################################################################
    apk add \
        php7 \
        php7-common \
        php7-cgi \
        php7-curl \
        php7-imap \
        php7-pdo \
        php7-pgsql \
        php7-mysqli \
        php7-sqlite3 \
        php7-gd \
        php7-intl \
        php7-bcmath \
        php7-amqp@testing \
        php7-memcached@testing \
        php7-mcrypt \
        php7-xsl \
        php7-ldap \
        php7-openssl \
        php7-iconv \
        php7-mbstring \
        php7-json \
        php7-phar \
        php7-redis@testing \
        php7-xmlrpc \
        php7-ssh2@testing \
        php7-apcu@testing \
        php7-zip \
        php7-xdebug && \
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
    apk del curl && \
    rm -rf /var/cache/apk/*

CMD php