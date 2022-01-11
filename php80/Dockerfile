FROM dockette/alpine:3.14

LABEL maintainer="Milan Sulc <sulcmil@gmail.com>"

ADD conf/ci.ini /etc/php8/conf.d/

ENV PHP_DIR=/usr/bin
ENV PHP_BIN=$PHP_DIR/php
ENV PHP8_BIN=$PHP_DIR/php8
ENV PHPXD_BIN=$PHP_DIR/phpxd
ENV COMPOSER_DIR=/usr/bin/
ENV COMPOSER_BIN=$COMPOSER_DIR/composer
ENV TZ=Europe/Prague
ENV LD_PRELOAD="/usr/lib/preloadable_libiconv.so php"

RUN echo '@community http://nl.alpinelinux.org/alpine/v3.14/community' >> /etc/apk/repositories && \
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
        gnu-libiconv@community && \
    # PHP ######################################################################
    apk --no-cache add \
        php8@community \
        php8-pecl-apcu@community \
        php8-bcmath@community \
        php8-bz2@community \
        php8-calendar@community \
        php8-cgi@community \
        php8-ctype@community \
        php8-curl@community \
        php8-dom@community \
        php8-exif@community \
        php8-fileinfo@community \
        php8-gd@community \
        php8-gettext@community \
        php8-iconv@community \
        php8-imap@community \
        php8-intl@community \
        php8-ldap@community \
        php8-mbstring@community \
        php8-pecl-mcrypt@community \
        php8-pecl-memcache@community \
        php8-pecl-memcached@community \
        php8-mysqli@community \
        php8-mysqlnd@community \
        php8-openssl@community \
        php8-pcntl@community \
        php8-pdo_mysql@community \
        php8-pdo_pgsql@community \
        php8-pdo_sqlite@community \
        php8-pdo@community \
        php8-pgsql@community \
        php8-phar@community \
        php8-posix@community \
        php8-session@community \
        php8-simplexml@community \
        php8-soap@community \
        php8-sodium@community \
        php8-sqlite3@community \
        php8-tokenizer@community \
        php8-xdebug@community \
        php8-xml@community \
        php8-xmlreader@community \
        php8-xmlwriter@community \
        php8-xsl@community \
        php8-zip@community \
        php8-zlib@community && \
        sed -i -- 's/zend/;zend/g' /etc/php8/conf.d/50_xdebug.ini && \
        echo "php -dzend_extension=xdebug.so \$@" >> $PHPXD_BIN && \
        chmod +x $PHPXD_BIN && \
        ln -s $PHP8_BIN $PHP_BIN && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2 && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/* /tmp/*

CMD php
