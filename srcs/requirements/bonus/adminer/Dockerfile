FROM alpine:3.17

RUN apk update && \
	apk add adminer wget php php-fpm mariadb-client php-mysqli php-mysqlnd

RUN wget -O /var/www/html/index.html https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-mysql.php

COPY ./conf/www.conf /etc/php81/php-fpm.d

CMD ["php-fpm81", "-F"]
EXPOSE 9001
