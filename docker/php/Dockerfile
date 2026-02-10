FROM php:8.2-fpm
WORKDIR /var/www
RUN docker-php-ext-install pdo pdo_mysql \
    && mkdir -p /var/www/public/uploads \
    && chown -R www-data:www-data /var/www/public/uploads \
    && chmod -R 755 /var/www/public/uploads
EXPOSE 9000
