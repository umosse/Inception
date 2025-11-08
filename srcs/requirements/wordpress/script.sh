#!/bin/bash

FILE=/var/www/html/wp-config.php

# Check if the wp-config.php file does not exist.
if [ ! -f "$FILE" ]; then

    # Create a directory for the WordPress installation.
    mkdir -p /var/www/html
    wp core download --allow-root --path="/var/www/html"

    # Copy the sample configuration file and replace placeholders with actual data.
    wp config create --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=mariadb --allow-root --path="/var/www/html"

    # Install WordPress using WP-CLI.
    wp core install --allow-root \
    --url=$WP_URL \
    --title="$WP_TITLE" \
    --admin_user=$WP_ADMIN_USER \
    --admin_password=$WP_ADMIN_PASSWORD \
    --admin_email=$WP_ADMIN_EMAIL --path='/var/www/html'

    # Create a guest user using WP-CLI.
    wp --allow-root user create $WP_GUEST_USER $WP_GUEST_EMAIL --user_pass=$WP_GUEST_PASSWORD --path='/var/www/html'

fi

# Set correct ownership and permissions for the WordPress files.
chown -R www-data:www-data /var/www/html

# Start PHP-FPM service in the foreground.
exec "$@"