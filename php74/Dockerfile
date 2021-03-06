FROM dockette/alpine:3.12

ADD https://dl.bintray.com/php-alpine/key/php-alpine.rsa.pub /etc/apk/keys/php-alpine.rsa.pub
ADD conf/ci.ini /etc/php7/conf.d/999-ci.ini

ENV PHP_DIR=/usr/bin
ENV PHP7_BIN=$PHP_DIR/php7
ENV PHP_BIN=$PHP_DIR/php
ENV PHPXD_BIN=$PHP_DIR/phpxd
ENV COMPOSER_DIR=/usr/bin/
ENV COMPOSER_BIN=$COMPOSER_DIR/composer
ENV TZ=Europe/Prague
ENV LD_PRELOAD="/usr/lib/preloadable_libiconv.so php"

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories && \
    echo "@php https://dl.bintray.com/php-alpine/v3.10/php-7.4" >> /etc/apk/repositories && \
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
        gnu-libiconv@edge && \
    # PHP ######################################################################
    apk --no-cache add \
        php7@php \
        php7-apcu@php \
        php7-bcmath@php \
        php7-bz2@php \
        php7-calendar@php \
        php7-cgi@php \
        php7-ctype@php \
        php7-curl@php \
        php7-dom@php \
        php7-exif@php \
        php7-gettext@php \
        php7-gd@php \
        php7-iconv@php \
        php7-imap@php \
        php7-intl@php \
        php7-json@php \
        php7-ldap@php \
        php7-mbstring@php \
        php7-mysqli@php \
        php7-mysqlnd@php \
        php7-openssl@php \
        php7-pdo@php \
        php7-pdo_mysql@php \
        php7-pdo_pgsql@php \
        php7-pdo_sqlite@php \
        php7-phar@php \
        php7-phpdbg@php \
        php7-pgsql@php \
        php7-posix@php \
        php7-session@php \
        php7-soap@php \
        php7-sodium@php \
        php7-sqlite3@php \
        php7-xdebug@php \
        php7-xml@php \
        php7-xmlreader@php \
        php7-xsl@php \
        php7-zip@php \
        php7-zlib@php && \
        sed -i -- 's/zend/;zend/g' /etc/php7/conf.d/00_xdebug.ini && \
        echo "php -dzend_extension=xdebug \$@" >> $PHPXD_BIN && \
        chmod +x $PHPXD_BIN && \
        ln -s /usr/bin/php7 /usr/bin/php && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2 && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD php
