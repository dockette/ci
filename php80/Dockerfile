FROM dockette/alpine:3.12

ADD https://dl.bintray.com/php-alpine/key/php-alpine.rsa.pub /etc/apk/keys/php-alpine.rsa.pub
ADD conf/ci.ini /etc/php8/conf.d/999-ci.ini

ENV PHP_DIR=/usr/bin
ENV PHP8_BIN=$PHP_DIR/php8
ENV PHP_BIN=$PHP_DIR/php
ENV PHPXD_BIN=$PHP_DIR/phpxd
ENV COMPOSER_DIR=/usr/bin/
ENV COMPOSER_BIN=$COMPOSER_DIR/composer
ENV TZ=Europe/Prague
ENV LD_PRELOAD="/usr/lib/preloadable_libiconv.so php"

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories && \
    echo "@php https://dl.bintray.com/php-alpine/v3.12/php-8.0" >> /etc/apk/repositories && \
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
        php8@php \
        php8-apcu@php \
        php8-bcmath@php \
        php8-bz2@php \
        php8-calendar@php \
        php8-cgi@php \
        php8-ctype@php \
        php8-curl@php \
        php8-dom@php \
        php8-exif@php \
        php8-gettext@php \
        php8-gd@php \
        php8-iconv@php \
        php8-imap@php \
        php8-intl@php \
        php8-ldap@php \
        php8-mbstring@php \
        php8-mysqli@php \
        php8-mysqlnd@php \
        php8-openssl@php \
        php8-pdo@php \
        php8-pdo_mysql@php \
        php8-pdo_pgsql@php \
        php8-pdo_sqlite@php \
        php8-phar@php \
        php8-phpdbg@php \
        php8-pgsql@php \
        php8-posix@php \
        php8-session@php \
        php8-soap@php \
        php8-sodium@php \
        php8-sqlite3@php \
        php8-xdebug@php \
        php8-xml@php \
        php8-xmlreader@php \
        php8-xsl@php \
        php8-zip@php && \
        sed -i -- 's/zend/;zend/g' /etc/php8/conf.d/00_xdebug.ini && \
        echo "php -dzend_extension=xdebug \$@" >> $PHPXD_BIN && \
        chmod +x $PHPXD_BIN && \
        ln -s /usr/bin/php8 /usr/bin/php && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2 && \
    # CLEAN UP #################################################################
    rm -rf /var/cache/apk/*

CMD php
