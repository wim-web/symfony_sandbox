FROM php:latest as symfony

RUN curl -sS https://get.symfony.com/cli/installer | bash

FROM php:7.4-cli-alpine3.11

RUN apk upgrade --update && apk --no-cache add icu-dev oniguruma-dev && \
    docker-php-ext-install -j$(nproc) intl mbstring pdo_mysql

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
COPY --from=symfony /root/.symfony/bin/symfony /usr/bin/symfony

RUN composer config -g repos.packagist composer https://packagist.jp && \
    composer global require hirak/prestissimo

