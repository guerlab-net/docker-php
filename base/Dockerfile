FROM php:fpm-stretch

LABEL maintainer="guerlab <master@guerlab.net>"

RUN apt-get clean \
        && apt-get update;

RUN apt-get install -y \
            libfreetype6-dev \
            libjpeg62-turbo-dev \
            libpng-dev \
            libmcrypt-dev \
            zlib1g-dev \
            libzip-dev \
            libmcrypt-dev

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include --with-jpeg-dir=/usr/include/ \
        && docker-php-ext-install -j$(nproc) iconv gd zip mysqli pdo_mysql\
        && pecl install mcrypt-1.0.2 \
        && cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime;

RUN echo 'extension=mcrypt.so' > /usr/local/etc/php/conf.d/docker-php-ext-mcrypt.ini

ENV PHP_EXTRA_CONFIGURE_ARGS --enable-fpm --with-fpm-user=root --with-fpm-group=root --disable-cgi
