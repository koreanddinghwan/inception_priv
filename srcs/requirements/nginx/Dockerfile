#도커는 Dockerfile을 통해 이미지를 만들 수 있습니다.
#도커파일은 명령어의 집합인 텍스트파일이고, 이미지를 만들기 위한 CLI 커맨드를 포함하고 있습니다.
#도커는 도커파일을 순서대로 실행합니다.
#도커파일은 반드시 부모 이미지를 정의하는 FROM으로 시작합니다.
#\은 줄바꿈을 의미합니다.

#RUN에는 기본적으로 2가지 형태가 있고,
#RUN <cmd> 또는 RUN ["실행파일", "파라미터", "파라미터"]형태가 있습니다.
#이미지 위의 레이어에서 모든 명령을 실행하고, 결과를 커밋합니다.

#사용자 추가

#COPY또한 2가지 형식이 있습니다.
#COPY <src>... <dest>
#COPY ["<src>", ... , "<dest>"]
#빌드 context(docker-compose.yml에서 확인)에서 상대경로로 해석된다.

#SSL인증서 카피


#컨테이너가 런타임에 지정된 네트워크 포트에서 수신대기함을 Docker에게 알린다.
#TCP혹은 UDP에서 수신하는지 여부를 지정할 수 있으며,
#기본값은 TCP이다.
#실제로 포트를 여는 것이 아닌, 이미지 빌드-컨테이너 실행 사이에서 사용할 포트에 대한 일종의 문서역할이다.
#왜냐하면, 도커 네트워크에서는 같은 네트워크에 속한 모든 컨테이너가 모든 포트를 통해 통신할 수 있기 때문이다.

#컨테이너에서 실제 포트를 열기위해선 -p 옵션으로 docker run을 수행한다.
FROM alpine:3.18

# Update and install necessary packages
RUN apk update 
RUN apk add nginx openssl

# Create SSL certificate and key
# RUN openssl req -x509 \
# 	-newkey rsa:2048 \
# 	-days 365 -nodes -x509 \
#     -subj "/C=US/ST=California/L=San Francisco/O=42/CN=localhost" \
#     -keyout /etc/ssl/private/nginx-selfsigned.key \
#     -out /etc/ssl/certs/nginx-selfsigned.crt

RUN openssl req -x509 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
	-newkey rsa:2048 -nodes -sha256 \
	-subj '/CN=localhost' -extensions EXT -config <( \
	printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")

# Copy the nginx configuration file
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

# Expose ports 443
EXPOSE 443

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

