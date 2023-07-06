FROM alpine:3.17

RUN apk update && \
	apk add \
	php \
	php-fpm \
	php-mysqli \
	php-mysqlnd \
	php-session \
	dumb-init

COPY ./conf/www.conf /etc/php81/php-fpm.d
COPY ./tools/adminer.sh /tmp/adminer.sh
RUN chmod +x /tmp/adminer.sh
RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-mysql.php -O /tmp/index.php

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/tmp/adminer.sh"]
EXPOSE 9001
