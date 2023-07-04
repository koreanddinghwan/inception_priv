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

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/tmp/adminer.sh"]
EXPOSE 9001
