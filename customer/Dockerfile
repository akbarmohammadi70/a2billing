FROM php:5.6-apache
WORKDIR /var/www/a2billing
COPY . .
RUN chown -R www-data:www-data /var/www/a2billing
RUN mkdir -p /var/lib/a2billing/script && mkdir -p /var/run/a2billing
RUN chmod 755 ./customer/templates_c
RUN chmod 755 ./agent/templates_c
RUN chown -R  www-data:www-data ./customer/templates_c
RUN chown -R  www-data:www-data ./agent/templates_c
