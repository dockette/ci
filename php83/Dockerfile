FROM dockette/alpine:3.19

LABEL maintainer="Milan Sulc <sulcmil@gmail.com>"

ADD conf/php.ini /etc/php83/conf.d/999-php.ini

ENV PHP_DIR=/usr/bin
ENV PHP_BIN=$PHP_DIR/php
ENV PHP8_BIN=$PHP_DIR/php83
ENV PHPXD_BIN=$PHP_DIR/phpxd
ENV COMPOSER_DIR=/usr/bin/
ENV COMPOSER_BIN=$COMPOSER_DIR/composer
ENV TZ=Europe/Prague
ENV LD_PRELOAD="/usr/lib/preloadable_libiconv.so php"

RUN echo '@community http://dl-cdn.alpinelinux.org/alpine/v3.19/community/' >> /etc/apk/repositories && \
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
        php83@community \
        php83-pecl-apcu@community \
        php83-bcmath@community \
        php83-bz2@community \
        php83-calendar@community \
        php83-cgi@community \
        php83-ctype@community \
        php83-curl@community \
        php83-dom@community \
        php83-exif@community \
        php83-fileinfo@community \
        php83-gd@community \
        php83-gettext@community \
        php83-iconv@community \
        php83-pecl-imagick@community \
        php83-imap@community \
        php83-intl@community \
        php83-ldap@community \
        php83-mbstring@community \
        php83-pecl-memcache@community \
        php83-pecl-memcached@community \
        php83-mysqli@community \
        php83-mysqlnd@community \
        php83-openssl@community \
        php83-pcntl@community \
        php83-pdo_mysql@community \
        php83-pdo_pgsql@community \
        php83-pdo_sqlite@community \
        php83-pdo@community \
        php83-pgsql@community \
        php83-phar@community \
        php83-posix@community \
        php83-redis@community \
        php83-session@community \
        php83-simplexml@community \
        php83-soap@community \
        php83-sodium@community \
        php83-sqlite3@community \
        php83-tokenizer@community \
        php83-xdebug@community \
        php83-xml@community \
        php83-xmlreader@community \
        php83-xmlwriter@community \
        php83-xsl@community \
        php83-zip@community \
        php83-zlib@community && \
        sed -i -- 's/zend/;zend/g' /etc/php83/conf.d/50_xdebug.ini && \
        echo "php -dzend_extension=xdebug.so \$@" >> $PHPXD_BIN && \
        chmod +x $PHPXD_BIN && \
        ln -s $PHP8_BIN $PHP_BIN && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2 && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/* /tmp/*

CMD php
