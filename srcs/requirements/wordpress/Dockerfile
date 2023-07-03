FROM alpine:3.17

# wordpress실행을 위한 php와 mysql-client 설치
RUN apk update && \
    apk add \
	php \ 
	php-fpm \ 
	mariadb-client \
	openrc \
	curl
# php
# php-fpm: php를 실행하기 위한 FastCGI Process Manager
# mysql-client: mysql 서버에 접속하기 위한 클라이언트
# openrc: alpine linux에서 데몬 서비스를 관리하기 위한 init system

# cgi 프로세스 설정용 www.conf파일을 복사
COPY ./conf/www.conf /etc/php81/php-fpm.d

# https://make.wordpress.org/hosting/handbook/server-environment/ 참고. 필수 extension은 php-mysqli와 php-json임.
# wordpress를 실행하기 위한 php 확장기능 설치
RUN apk add \
	php-mysqlnd \
	php-common \
	php-mysqli \
	php-mbstring \
	php-json \
	php-session \
	php-curl \
	php-dom \
	php-exif \
	php-fileinfo \
	php-mbstring \
	php-openssl \
	php-xml \
	php-zip \
	graphicsmagick \
	php-iconv \
	php-gd \
	php-intl \
	php-curl 

# wordpress를 실행하기 위한 php 확장기능 설치
# php-mysqli: mysql과 연동하기 위한 확장기능
# php-mbstring: 문자열 처리를 위한 확장기능
# php-json: json 처리를 위한 확장기능
# php-session: 세션 처리를 위한 확장기능

# php-fpm non-daemon mode 설정
# 참고 https://linux.die.net/man/8/php-fpm
CMD ["php-fpm81", "-F"]

EXPOSE 9000
