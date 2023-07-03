FROM alpine:3.18

RUN apk update && \
	apk add vsftpd dumb-init

COPY ./conf/vsftpd.conf /etc/vsftpd/vsftpd.conf

CMD ["vsftpd", "/etc/vsftpd/vsftpd.conf"]

EXPOSE 20 21
