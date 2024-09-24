FROM dockette/alpine:3.16

LABEL maintainer="Milan Sulc <sulcmil@gmail.com>"

ADD conf/php.ini /etc/php81/conf.d/999-php.ini

ENV PHP_DIR=/usr/bin
ENV PHP_BIN=$PHP_DIR/php
ENV PHP8_BIN=$PHP_DIR/php81
ENV PHPXD_BIN=$PHP_DIR/phpxd
ENV COMPOSER_DIR=/usr/bin/
ENV COMPOSER_BIN=$COMPOSER_DIR/composer
ENV TZ=Europe/Prague
ENV LD_PRELOAD="/usr/lib/preloadable_libiconv.so php"

RUN echo '@community http://dl-cdn.alpinelinux.org/alpine/v3.16/community/' >> /etc/apk/repositories && \
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
        php81@community \
        php81-pecl-apcu@community \
        php81-bcmath@community \
        php81-bz2@community \
        php81-calendar@community \
        php81-cgi@community \
        php81-ctype@community \
        php81-curl@community \
        php81-dom@community \
        php81-exif@community \
        php81-fileinfo@community \
        php81-gd@community \
        php81-gettext@community \
        php81-iconv@community \
        php81-pecl-imagick@community \
        php81-imap@community \
        php81-intl@community \
        php81-ldap@community \
        php81-mbstring@community \
        php81-pecl-memcache@community \
        php81-pecl-memcached@community \
        php81-mysqli@community \
        php81-mysqlnd@community \
        php81-openssl@community \
        php81-pcntl@community \
        php81-pdo_mysql@community \
        php81-pdo_pgsql@community \
        php81-pdo_sqlite@community \
        php81-pdo@community \
        php81-pgsql@community \
        php81-phar@community \
        php81-posix@community \
        php81-redis@community \
        php81-session@community \
        php81-simplexml@community \
        php81-soap@community \
        php81-sodium@community \
        php81-sqlite3@community \
        php81-tokenizer@community \
        php81-xdebug@community \
        php81-xml@community \
        php81-xmlreader@community \
        php81-xmlwriter@community \
        php81-xsl@community \
        php81-zip@community \
        php81-zlib@community && \
        sed -i -- 's/zend/;zend/g' /etc/php81/conf.d/50_xdebug.ini && \
        echo "php -dzend_extension=xdebug.so \$@" >> $PHPXD_BIN && \
        chmod +x $PHPXD_BIN && \
        ln -s $PHP8_BIN $PHP_BIN && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2 && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/* /tmp/*

CMD ["php"]
