FROM alpine:3.17
RUN apk update && \
	apk add nodejs \ 
	npm \
	git \
	dumb-init

COPY ./conf/chatServer.sh /tmp/chatServer.sh

RUN git clone https://github.com/koreanddinghwan/chatServer /tmp

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/bin/ash", "/tmp/chatServer.sh"]




