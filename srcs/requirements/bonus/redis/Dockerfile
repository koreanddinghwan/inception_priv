FROM alpine:3.18

RUN apk update && \
	apk add redis

COPY ./conf/redis.conf /etc/redis.conf

CMD ["redis-server", "/etc/redis.conf"]
EXPOSE 6379
