FROM dockette/alpine

MAINTAINER Milan Sulc <sulcmil@gmail.com>

ADD conf/ci.ini /etc/php7.1/conf.d/

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
    apk add --update \
        php7.1@testing \
        php7.1-bcmath@testing \
        php7.1-bz2@testing \
        php7.1-calendar@testing \
        php7.1-cgi@testing \
        php7.1-ctype@testing \
        php7.1-curl@testing \
        php7.1-gettext@testing \
        php7.1-gd@testing \
        php7.1-iconv@testing \
        php7.1-imap@testing \
        php7.1-intl@testing \
        php7.1-json@testing \
        php7.1-ldap@testing \
        php7.1-mbstring@testing \
        php7.1-mcrypt@testing \
        php7.1-mysqli@testing \
        php7.1-mysqlnd@community \
        php7.1-openssl@testing \
        php7.1-pdo@testing \
        php7.1-pdo_mysql@testing \
        php7.1-pdo_pgsql@testing \
        php7.1-pdo_sqlite@testing \
        php7.1-phar@testing \
        php7.1-pgsql@testing \
        php7.1-sqlite3@testing \
        php7-xdebug@community \
        php7.1-xmlrpc@testing \
        php7.1-xsl@testing \
        php7.1-zip@testing && \
        cp /etc/php7/conf.d/xdebug.ini /etc/php7.1/conf.d/xdebug.ini && \
        sed -i -- 's/zend/;zend/g' /etc/php7.1/conf.d/xdebug.ini && \
        echo "php -dzend_extension=xdebug.so" >> $PHPXD_BIN && \
        chmod +x $PHPXD_BIN && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=$COMPOSER_DIR --filename=composer && \
    composer global require "hirak/prestissimo:^0.3" && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD php
