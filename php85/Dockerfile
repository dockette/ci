FROM dockette/alpine:edge

LABEL maintainer="Milan Sulc <sulcmil@gmail.com>"

ADD conf/php.ini /etc/php85/conf.d/999-php.ini

ENV PHP_DIR=/usr/bin
ENV PHP_BIN=$PHP_DIR/php
ENV PHP8_BIN=$PHP_DIR/php85
ENV PHPXD_BIN=$PHP_DIR/phpxd
ENV COMPOSER_DIR=/usr/bin/
ENV COMPOSER_BIN=$COMPOSER_DIR/composer
ENV TZ=Europe/Prague
ENV LD_PRELOAD="/usr/lib/preloadable_libiconv.so php"

RUN echo '@community http://dl-cdn.alpinelinux.org/alpine/edge/community/' >> /etc/apk/repositories && \
    # DEPENDENCIES #############################################################
    apk update && \
    apk upgrade && \
    apk --no-cache add \
        bash \
        git \
        ca-certificates \
        curl \
        openssh \
        tzdata \
        make \
        direnv \
        gnu-libiconv@community && \
    # PHP ######################################################################
    apk --no-cache add \
        php85-bcmath@community \
        php85-bz2@community \
        php85-calendar@community \
        php85-cgi@community \
        php85-ctype@community \
        php85-curl@community \
        php85-dom@community \
        php85-exif@community \
        php85-fileinfo@community \
        php85-gd@community \
        php85-gettext@community \
        php85-iconv@community \
        php85-imap@community \
        php85-intl@community \
        php85-ldap@community \
        php85-mbstring@community \
        php85-mysqli@community \
        php85-mysqlnd@community \
        php85-openssl@community \
        php85-pcntl@community \
        php85-pdo_mysql@community \
        php85-pdo_pgsql@community \
        php85-pdo_sqlite@community \
        php85-pdo@community \
        php85-pecl-amqp@community \
        php85-pecl-apcu@community \
        php85-pecl-imagick@community \
        php85-pecl-mailparse@community \
        php85-pecl-memcache@community \
        php85-pecl-memcached@community \
        php85-pgsql@community \
        php85-phar@community \
        php85-posix@community \
        php85-redis@community \
        php85-session@community \
        php85-simplexml@community \
        php85-soap@community \
        php85-sodium@community \
        php85-sqlite3@community \
        php85-tokenizer@community \
        php85-xdebug@community \
        php85-xml@community \
        php85-xmlreader@community \
        php85-xmlwriter@community \
        php85-xsl@community \
        php85-zip@community \
        php85-zlib@community \
        php85@community \
        && \
        sed -i -- 's/zend/;zend/g' /etc/php85/conf.d/50_xdebug.ini && \
        echo "php -dzend_extension=xdebug.so \$@" >> $PHPXD_BIN && \
        chmod +x $PHPXD_BIN && \
        ln -s $PHP8_BIN $PHP_BIN && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2 && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/* /tmp/*

CMD ["php"]
