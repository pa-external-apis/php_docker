
FROM php:8-apache
RUN apt-get update && apt-get install -y wget zip default-mysql-client
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli
RUN wget https://github.com/Azure-Samples/php-mysql-app-service/archive/refs/heads/main.zip
RUN unzip main.zip -d /tmp/
RUN mkdir -p /var/www/html
RUN mv /tmp/php-mysql-app-service-main/* /var/www/html/
