FROM dockette/alpine:3.9

LABEL maintainer="Milan Sulc <sulcmil@gmail.com>"

ADD conf/php.ini /etc/php7/conf.d/999-php.ini

ENV PHP_DIR=/usr/bin
ENV PHP_BIN=$PHP_DIR/php
ENV PHPXD_BIN=$PHP_DIR/phpxd
ENV COMPOSER_DIR=/usr/bin/
ENV COMPOSER_BIN=$COMPOSER_DIR/composer
ENV TZ=Europe/Prague
ENV LD_PRELOAD="/usr/lib/preloadable_libiconv.so php"

RUN echo '@community http://dl-cdn.alpinelinux.org/alpine/v3.9/community' >> /etc/apk/repositories && \
    echo '@v310 http://dl-cdn.alpinelinux.org/alpine/v3.10/community' >> /etc/apk/repositories && \
    echo '@v314 http://dl-cdn.alpinelinux.org/alpine/v3.14/community' >> /etc/apk/repositories && \
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
        direnv@v314 \
        gnu-libiconv@v310 && \
    # PHP ######################################################################
    apk --no-cache add \
        php7@community \
        php7-apcu@community \
        php7-bcmath@community \
        php7-bz2@community \
        php7-calendar@community \
        php7-cgi@community \
        php7-ctype@community \
        php7-curl@community \
        php7-dom@community \
        php7-exif@community \
        php7-fileinfo@community \
        php7-gd@community \
        php7-gettext@community \
        php7-iconv@community \
        php7-imagick@community \
        php7-imap@community \
        php7-intl@community \
        php7-json@community \
        php7-ldap@community \
        php7-mbstring@community \
        php7-pecl-mcrypt@community \
        php7-memcached@community \
        php7-mysqli@community \
        php7-mysqlnd@community \
        php7-openssl@community \
        php7-pdo_mysql@community \
        php7-pdo_pgsql@community \
        php7-pdo_sqlite@community \
        php7-pdo@community \
        php7-pgsql@community \
        php7-phar@community \
        php7-posix@community \
        php7-redis@community \
        php7-session@community \
        php7-simplexml@community \
        php7-soap@community \
        php7-sqlite3@community \
        php7-tokenizer@community \
        php7-xdebug@community \
        php7-xml@community \
        php7-xmlreader@community \
        php7-xmlrpc@community \
        php7-xmlwriter@community \
        php7-xsl@community \
        php7-zip@community \
        php7-zlib@community && \
        sed -i -- 's/zend/;zend/g' /etc/php7/conf.d/xdebug.ini && \
        echo "php -dzend_extension=xdebug.so \$@" >> $PHPXD_BIN && \
        chmod +x $PHPXD_BIN && \
    apk add --no-cache \
        gcc \
        php7-dev@community \
        php7-pear@community \
        zlib-dev \
        musl-dev && \
    pecl install memcache-4.0.5.2 && \
    echo "extension=memcache.so" >> /etc/php7/conf.d/20_memcache.ini && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2 && \
    # CLEAN UP #################################################################
    apk del \
        gcc \
        php7-dev \
        php7-pear \
        zlib-dev \
        musl-dev && \
    rm -rf /var/cache/apk/* /tmp/*

CMD php
