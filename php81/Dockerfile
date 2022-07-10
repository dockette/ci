FROM dockette/alpine:edge

LABEL maintainer="Milan Sulc <sulcmil@gmail.com>"

ADD conf/ci.ini /etc/php8/conf.d/

ENV PHP_DIR=/usr/bin
ENV PHP_BIN=$PHP_DIR/php
ENV PHP8_BIN=$PHP_DIR/php81
ENV PHPXD_BIN=$PHP_DIR/phpxd
ENV COMPOSER_DIR=/usr/bin/
ENV COMPOSER_BIN=$COMPOSER_DIR/composer
ENV TZ=Europe/Prague
ENV LD_PRELOAD="/usr/lib/preloadable_libiconv.so php"

RUN echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
    echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories && \
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
        gnu-libiconv@testing && \
    # PHP ######################################################################
    apk --no-cache add \
        php81@testing \
        php81-pecl-apcu@testing \
        php81-bcmath@testing \
        php81-bz2@testing \
        php81-calendar@testing \
        php81-cgi@testing \
        php81-ctype@testing \
        php81-curl@testing \
        php81-dom@testing \
        php81-exif@testing \
        php81-fileinfo@testing \
        php81-gd@testing \
        php81-gettext@testing \
        php81-iconv@testing \
        php81-imagick@testing \
        php81-imap@testing \
        php81-intl@testing \
        php81-ldap@testing \
        php81-mbstring@testing \
        php81-pecl-memcache@testing \
        php81-pecl-memcached@testing \
        php81-mysqli@testing \
        php81-mysqlnd@testing \
        php81-openssl@testing \
        php81-pcntl@testing \
        php81-pdo_mysql@testing \
        php81-pdo_pgsql@testing \
        php81-pdo_sqlite@testing \
        php81-pdo@testing \
        php81-pgsql@testing \
        php81-phar@testing \
        php81-posix@testing \
        php81-redis@testing \
        php81-session@testing \
        php81-simplexml@testing \
        php81-soap@testing \
        php81-sodium@testing \
        php81-sqlite3@testing \
        php81-tokenizer@testing \
        php81-xdebug@testing \
        php81-xml@testing \
        php81-xmlreader@testing \
        php81-xmlwriter@testing \
        php81-xsl@testing \
        php81-zip@testing \
        php81-zlib@testing && \
        sed -i -- 's/zend/;zend/g' /etc/php81/conf.d/50_xdebug.ini && \
        echo "php -dzend_extension=xdebug.so \$@" >> $PHPXD_BIN && \
        chmod +x $PHPXD_BIN && \
        ln -s $PHP8_BIN $PHP_BIN && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2 && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/* /tmp/*

CMD php
