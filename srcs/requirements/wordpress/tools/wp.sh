# bind된 경로에 wordpress 없으면 설치
if [ ! -d /var/www/html/wordpress ]; then
	# wordpress unzip
	tar -zxvf /tmp/wordpress.tar.gz -C /var/www/html --strip-components 1
fi

# wp-config.php 복사
mv /tmp/wp-config.php /var/www/html/wp-config.php

# Retrieve the secret keys and salts from the API
keys_and_salts=$(curl -sS "https://api.wordpress.org/secret-key/1.1/salt/")

# Replace the existing keys and salts in wp-config.php with the new ones
sed -i "s/#REPLACE_ME/$keys_and_salts/" wp-config.php

# php-fpm non-daemon mode 설정
# 참고 https://linux.die.net/man/8/php-fpm
php-fpm81 -F
