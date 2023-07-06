FROM alpine:3.17

RUN apk update && \
	apk add vsftpd db-utils dumb-init

COPY conf/vsftpd.conf /etc/vsftpd
COPY tools/run-vsftpd.sh /tmp/run-vsftpd.sh

#dumb-init
# sh파일은 실행시킬때 마다 새로운 프로세스가 생성되는데, 이때 dumb-init을 사용하면
# sh파일이 실행되는 프로세스의 부모 프로세스가 dumb-init이 되어서
# sh파일이 종료되면 dumb-init이 자식 프로세스를 종료시켜준다.
ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["/bin/ash", "/tmp/run-vsftpd.sh"]
EXPOSE 21 10090-10100
