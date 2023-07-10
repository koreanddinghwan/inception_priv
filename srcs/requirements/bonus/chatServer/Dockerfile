FROM alpine:3.17 AS npmbase
RUN apk update && \
	apk add nodejs \ 
	npm \
	git \
	dumb-init

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

COPY ./tools/chatServer.sh /tmp/chatServer.sh

CMD ["/bin/ash", "/tmp/chatServer.sh"]
EXPOSE 4001 4002
