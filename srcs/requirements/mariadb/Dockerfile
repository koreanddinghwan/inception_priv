FROM alpine:3.17

RUN apk update && \
    apk add mariadb \
	mariadb-client \
	dumb-init && \
    rm -rf /var/cache/apk/*

COPY ./conf/my.cnf /etc/my.cnf
COPY ./tools/mysql.sh /tmp/mysql.sh

EXPOSE 3306

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/bin/ash", "/tmp/mysql.sh"]
