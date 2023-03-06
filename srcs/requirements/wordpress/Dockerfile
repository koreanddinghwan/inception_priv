FROM alpine:latest

RUN apk update && \
    apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib && \
    rm -rf /var/cache/apk/*

COPY ./conf/www.conf /etc/php7/php-fpm.d/www.conf

COPY ./conf/wordpress /var/www/wordpress

RUN chown -R www-data:www-data /var/www/wordpress && \
    chmod -R 755 /var/www/wordpress

EXPOSE 9000

CMD ["php-fpm7", "-F"]

