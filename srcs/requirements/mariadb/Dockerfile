FROM alpine:latest

RUN apk update && \
    apk add mariadb mariadb-client && \
    rm -rf /var/cache/apk/*

COPY ./conf/my.cnf /etc/mysql/my.cnf

EXPOSE 3306

CMD ["mysqld"]
