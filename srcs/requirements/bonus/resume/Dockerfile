FROM alpine:3.17 AS yarnbase
RUN apk update && \
	apk add nodejs \
	yarn \
	git \
	dumb-init

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

COPY ./tools/resume.sh /tmp/resume.sh

CMD ["/bin/ash", "/tmp/resume.sh"]
EXPOSE 3000
