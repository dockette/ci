FROM dockette/alpine:3.21

LABEL maintainer="Milan Sulc <sulcmil@gmail.com>"

ADD conf/php.ini /etc/php84/conf.d/999-php.ini

ENV PHP_DIR=/usr/bin
ENV PHP_BIN=$PHP_DIR/php
ENV PHP8_BIN=$PHP_DIR/php84
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
        php84-bcmath@community \
        php84-bz2@community \
        php84-calendar@community \
        php84-cgi@community \
        php84-ctype@community \
        php84-curl@community \
        php84-dom@community \
        php84-exif@community \
        php84-fileinfo@community \
        php84-gd@community \
        php84-gettext@community \
        php84-iconv@community \
        php84-imap@community \
        php84-intl@community \
        php84-ldap@community \
        php84-mbstring@community \
        php84-mysqli@community \
        php84-mysqlnd@community \
        php84-openssl@community \
        php84-pcntl@community \
        php84-pdo_mysql@community \
        php84-pdo_pgsql@community \
        php84-pdo_sqlite@community \
        php84-pdo@community \
        php84-pecl-apcu@community \
        php84-pecl-imagick@community \
        php84-pecl-mailparse@community \
        php84-pecl-memcache@community \
        php84-pecl-memcached@community \
        php84-pgsql@community \
        php84-phar@community \
        php84-posix@community \
        php84-redis@community \
        php84-session@community \
        php84-simplexml@community \
        php84-soap@community \
        php84-sodium@community \
        php84-sqlite3@community \
        php84-tokenizer@community \
        php84-xdebug@community \
        php84-xml@community \
        php84-xmlreader@community \
        php84-xmlwriter@community \
        php84-xsl@community \
        php84-zip@community \
        php84-zlib@community \
        php84@community \
        && \
        sed -i -- 's/zend/;zend/g' /etc/php84/conf.d/50_xdebug.ini && \
        echo "php -dzend_extension=xdebug.so \$@" >> $PHPXD_BIN && \
        chmod +x $PHPXD_BIN && \
        ln -s $PHP8_BIN $PHP_BIN && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2 && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/* /tmp/*

CMD ["php"]
