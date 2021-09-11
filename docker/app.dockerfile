FROM valeryan/php-fpm:latest

COPY ./etc/php.ini /usr/local/etc/php/

RUN chown -R www-data:www-data /var/www

# Handle npm configuration
RUN npm i -g npm
RUN npm i -g eslint
RUN mkdir -p /usr/lib/node_modules
RUN chown -R www-data:www-data /usr/lib/node_modules

USER www-data

WORKDIR /code
