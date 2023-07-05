FROM alpine:3.17

RUN apk update && \
	apk add nodejs \
	npm \
	dumb-init 

COPY ./tools/run.sh /tmp/run.sh

RUN chmod +x /tmp/run.sh

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["/bin/ash", "/tmp/run.sh"]

EXPOSE 4000
