FROM dockette/debian:jessie

MAINTAINER Milan Sulc <sulcmil@gmail.com>

ADD conf/ci.ini /etc/php5/mods-available/
ADD bin/php-enable-xdebug /usr/bin/
ADD bin/php-disable-xdebug /usr/bin/

RUN apt-get update && apt-get update -y && \
    # DEPENDENCIES #############################################################
    apt-get install -y gnupg2 curl git && \
    echo 'deb http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list.d/dotdeb.list && \
    echo 'deb-src http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list.d/dotdeb.list && \
    gpg --keyserver keys.gnupg.net --recv-key 89DF5277 && gpg -a --export 89DF5277 | apt-key add - && \
    apt-get update && \
    # PHP ######################################################################
    apt-get install -y \
        ca-certificates \
        php5-cli \
        php5-common \
        php5-cgi \
        php5-curl \
        php5-imap \
        php5-pgsql \
        php5-mysql \
        php5-sqlite \
        php5-gd \
        php5-intl \
        php5-mongo \
        php5-geoip \
        php5-memcached \
        php5-mcrypt \
        php5-xsl \
        php5-imagick \
        php5-ldap \
        php5-redis \
        php5-xmlrpc \
        php5-ssh2 \
        php5-apcu \
        php5-xdebug && \
    # COMPOSER #################################################################
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    composer global require "hirak/prestissimo:^0.3" && \
    ln -s /etc/php5/mods-available/tester.ini /etc/php5/cli/conf.d/999-tester.ini && \
    ln -s /etc/php5/mods-available/tester.ini /etc/php5/cgi/conf.d/999-tester.ini && \
    chmod +x /usr/bin/php-enable-xdebug && chmod +x /usr/bin/php-disable-xdebug && \
    # CLEAN UP #################################################################
    apt-get remove -y gnupg2 curl && \
    apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

CMD php