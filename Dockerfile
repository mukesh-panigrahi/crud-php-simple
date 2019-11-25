# base this image on the PHP image that comes with Apache https://hub.docker.com/_/php/
FROM php:7.3-apache

# persistent dependencies
RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
	rm -rf /var/lib/apt/lists/*

# take the contents of the local source folder, and copy to /var/www/html/ inside the container
# this is the expected web root of the default website for this server.
COPY src-php-7.3/ /var/www/html/

CMD ["apache2-foreground"]