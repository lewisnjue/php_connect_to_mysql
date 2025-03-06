# Use the official PHP 8.2 Apache image as the base
FROM php:8.2-apache

# Install necessary PHP extensions (mysqli for MySQL database access)
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copy the PHP application files into the container
COPY ./project /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Expose port 80 for Apache
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
