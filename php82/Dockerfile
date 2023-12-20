FROM dockette/alpine:3.18

LABEL maintainer="Milan Sulc <sulcmil@gmail.com>"

ADD conf/php.ini /etc/php82/conf.d/999-php.ini

ENV PHP_DIR=/usr/bin
ENV PHP_BIN=$PHP_DIR/php
ENV PHP8_BIN=$PHP_DIR/php82
ENV PHPXD_BIN=$PHP_DIR/phpxd
ENV COMPOSER_DIR=/usr/bin/
ENV COMPOSER_BIN=$COMPOSER_DIR/composer
ENV TZ=Europe/Prague
ENV LD_PRELOAD="/usr/lib/preloadable_libiconv.so php"

RUN echo '@community http://dl-cdn.alpinelinux.org/alpine/v3.18/community/' >> /etc/apk/repositories && \
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
        php82@community \
        php82-pecl-apcu@community \
        php82-bcmath@community \
        php82-bz2@community \
        php82-calendar@community \
        php82-cgi@community \
        php82-ctype@community \
        php82-curl@community \
        php82-dom@community \
        php82-exif@community \
        php82-fileinfo@community \
        php82-gd@community \
        php82-gettext@community \
        php82-iconv@community \
        php82-pecl-imagick@community \
        php82-imap@community \
        php82-intl@community \
        php82-ldap@community \
        php82-mbstring@community \
        php82-pecl-memcache@community \
        php82-pecl-memcached@community \
        php82-mysqli@community \
        php82-mysqlnd@community \
        php82-openssl@community \
        php82-pcntl@community \
        php82-pdo_mysql@community \
        php82-pdo_pgsql@community \
        php82-pdo_sqlite@community \
        php82-pdo@community \
        php82-pgsql@community \
        php82-phar@community \
        php82-posix@community \
        php82-redis@community \
        php82-session@community \
        php82-simplexml@community \
        php82-soap@community \
        php82-sodium@community \
        php82-sqlite3@community \
        php82-tokenizer@community \
        php82-xdebug@community \
        php82-xml@community \
        php82-xmlreader@community \
        php82-xmlwriter@community \
        php82-xsl@community \
        php82-zip@community \
        php82-zlib@community && \
        sed -i -- 's/zend/;zend/g' /etc/php82/conf.d/50_xdebug.ini && \
        echo "php -dzend_extension=xdebug.so \$@" >> $PHPXD_BIN && \
        chmod +x $PHPXD_BIN && \
        ln -s $PHP8_BIN $PHP_BIN && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2 && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/* /tmp/*

CMD php
