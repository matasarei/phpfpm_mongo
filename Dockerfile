FROM php:7.1-fpm-alpine

RUN apk update && apk add autoconf gcc build-base enchant-dev openssl-dev openssh git \
        && pecl install mongodb \
        && echo "extension=mongodb.so" > /usr/local/etc/php/conf.d/ext-mongodb.ini

WORKDIR /var/www/html

