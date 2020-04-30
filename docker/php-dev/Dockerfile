FROM php:7.4.2-fpm-alpine

COPY --chown=www-data . /app
COPY --chown=root docker/php-dev/conf.d/ $PHP_INI_DIR/conf.d/

WORKDIR /app

CMD ["php-fpm"]
EXPOSE 9000
