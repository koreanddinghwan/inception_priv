FROM alpine:3.17

RUN apk update && \
    apk add mariadb mariadb-client && \
    rm -rf /var/cache/apk/*

COPY ./conf/my.cnf /etc/my.cnf

# CMD ["/usr/bin/mysql_install_db", "--user=mysql", "--datadir=/var/lib/mysql"]

EXPOSE 3306

# run mysqld in foreground mode
CMD ["mysqld", "--user=mysql", "--console"]
