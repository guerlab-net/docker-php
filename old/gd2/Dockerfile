FROM guerlab/php:gd2

RUN apt-get install -y \
            libzip-dev \
            && docker-php-ext-install -j$(nproc) zip
