# base this image on the PHP image that comes with Apache https://hub.docker.com/_/php/
FROM php:7.3-apache

# persistent dependencies
RUN set -eux; \
	apt-get update -y; \
	apt-get install -y --no-install-recommends; \
        apt-get clean -y \
	&& rm -rf /var/lib/apt/lists/* /var/cache/apt/archives

RUN docker-php-ext-install mysqli
RUN pecl install xdebug-2.8.0
RUN docker-php-ext-enable xdebug

# take the contents of the local source folder, and copy to /var/www/html/ inside the container
# this is the expected web root of the default website for this server.
COPY src-php-7.3/ /var/www/html/

CMD ["apache2-foreground"]
