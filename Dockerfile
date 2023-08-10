FROM wordpress:6-php7.4-fpm-alpine

RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install -f xdebug-2.9.8 \
    && docker-php-ext-enable xdebug