# bind된 경로에 wordpress 없으면 설치
if [ ! -d /var/www/html/wordpress ]; then
	# wordpress unzip
	tar -zxvf /tmp/wordpress.tar.gz -C /var/www/html --strip-components 1
fi

# wp-config.php 복사
mv /tmp/wp-config.php /var/www/html/wp-config.php



SALT=$(curl -L https://api.wordpress.org/secret-key/1.1/salt/)
STRING='REPLACE_ME'
printf '%s\n' "g/$STRING/d" a "$SALT" . w | ed -s /var/www/html/wp-config.php

# php-fpm non-daemon mode 설정
# 참고 https://linux.die.net/man/8/php-fpm
php-fpm81 -F
