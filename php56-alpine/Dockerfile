FROM dockette/edge

MAINTAINER Milan Sulc <sulcmil@gmail.com>

ADD conf/ci.ini /etc/php5/conf.d/

ENV PHP_DIR=/usr/bin
ENV PHP_BIN=$PHP_DIR/php
ENV PHPXD_BIN=$PHP_DIR/phpxd
ENV COMPOSER_DIR=/usr/bin/
ENV COMPOSER_BIN=$COMPOSER_DIR/composer

RUN echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
    # DEPENDENCIES #############################################################
    apk update && apk upgrade && apk --no-cache add bash git ca-certificates wget curl && \
    # PHP ######################################################################
    apk add \
        php5 \
        php5-cli \
        php5-common \
        php5-cgi \
        php5-curl \
        php5-imap \
        php5-pdo \
        php5-pgsql \
        php5-mysql \
        php5-sqlite3 \
        php5-gd \
        php5-intl \
        php5-bcmath \
        php5-amqp@testing \
        php5-geoip@testing \
        php5-memcached@testing \
        php5-mcrypt \
        php5-xsl \
        php5-ldap \
        php5-openssl \
        php5-json \
        php5-phar \
        php5-redis@testing \
        php5-xmlrpc \
        php5-ssh2@testing \
        php5-apcu \
        php5-zip \
        php-xdebug && \
        sed -i -- 's/zend/;zend/g' /etc/php5/conf.d/xdebug.ini && \
        echo "php -dzend_extension=xdebug.so" >> $PHPXD_BIN && \
        chmod +x $PHPXD_BIN && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=$COMPOSER_DIR --filename=composer && \
    composer global require "hirak/prestissimo:^0.3" && \
    # MONGO ####################################################################
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-php5-mongo/master/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-php5-mongo/releases/download/1.16.4-r0/php5-mongo-1.6.14-r0.apk && \
    apk add php5-mongo-1.6.14-r0.apk && \
    # CLEAN UP #################################################################
    apk del wget curl && \
    rm php5-mongo-1.6.14-r0.apk /etc/apk/keys/sgerrand.rsa.pub && \
    rm -rf /var/cache/apk/*

CMD php