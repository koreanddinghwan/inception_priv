FROM alpine:3.17

RUN apk update && \
	apk add vsftpd db-utils dumb-init

COPY conf/vsftpd.conf /etc/vsftpd
COPY tools/run-vsftpd.sh /tmp/run-vsftpd.sh

#dumb-init
ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["/bin/ash", "/tmp/run-vsftpd.sh"]
EXPOSE 21
