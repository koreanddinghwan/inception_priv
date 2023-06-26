FROM alpine:3.14

RUN apk update && \
    apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib && \
    rm -rf /var/cache/apk/*

COPY wp-config.php /var/www/wordpress/
COPY wordpress /var/www/wordpress/

CMD ["php-fpm7", "-F"]

EXPOSE 9000
