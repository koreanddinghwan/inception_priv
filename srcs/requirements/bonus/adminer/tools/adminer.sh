#!/bin/sh

cp /tmp/index.php /var/www/adminer

php-fpm81 -F
