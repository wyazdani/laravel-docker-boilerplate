FROM php:8.1-apache

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql

# Copy application files to container
COPY . /var/www/html

# Set permissions for storage and bootstrap/cache directories
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache
RUN chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# Set document root
ENV APACHE_DOCUMENT_ROOT /var/www/html/public
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Enable Apache modules
RUN a2enmod rewrite
RUN php artisan config:cache

RUN php artisan route:cache

RUN php artisan view:cache
# Expose port 80
EXPOSE 80
# Start Apache
CMD ["apache2-foreground"]
