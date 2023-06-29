FROM alpine:3.18

RUN apk update && \
    apk add mariadb mariadb-client && \
    rm -rf /var/cache/apk/*

COPY ./conf/my.cnf /etc/my.cnf

EXPOSE 3306

# run mysqld in foreground mode
CMD ["mysqld", "--user=mysql", "--console"]
