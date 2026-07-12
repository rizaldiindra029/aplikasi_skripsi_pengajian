FROM php:7.4-apache

# Update dan install ekstensi yang dibutuhkan (termasuk mysqli untuk CodeIgniter 3)
RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    && docker-php-ext-install mysqli pdo pdo_mysql zip

# Aktifkan mod_rewrite Apache (dibutuhkan untuk routing CodeIgniter)
RUN a2enmod rewrite

# Atur working directory
WORKDIR /var/www/html

# Salin semua file dari proyek ke dalam container
COPY . /var/www/html/

# Atur permission agar Apache dapat membaca dan menulis dengan baik
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
