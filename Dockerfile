FROM php:7.1-fpm-alpine

RUN apk update && apk add autoconf gcc build-base enchant-dev openssl-dev openssh git \
        && pecl install mongodb && docker-php-ext-enable mongodb

WORKDIR /var/www/html

