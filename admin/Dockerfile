FROM php:5.6-apache

WORKDIR /var/www/html
COPY . .
# Install Composer
RUN apt update -y
RUN cp ./a2billing.conf /etc/
RUN apt install curl -y
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && chmod +x /usr/local/bin/composer 
RUN composer dump-autoload --optimize --classmap-authoritative
RUN mkdir -p /var/lib/a2billing/script
RUN mkdir -p /var/run/a2billing
RUN chmod 755 /var/www/html/admin/templates_c
RUN chmod 755 /var/www/html/agent/templates_c
RUN chown -Rf www-data:www-data /var/www/html/

