FROM php:7.4.2-fpm-alpine

COPY --chown=root ./conf.d/ $PHP_INI_DIR/conf.d/

WORKDIR /app

CMD ["php-fpm"]
EXPOSE 9000
