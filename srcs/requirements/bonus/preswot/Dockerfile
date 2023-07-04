FROM alpine:3.17


RUN apk update && \
	apk add wget git


WORKDIR /tmp

RUN wget https://unofficial-builds.nodejs.org/download/release/v14.4.0/node-v14.4.0-linux-x64-musl.tar.xz

RUN tar -xvf node-v14.4.0-linux-x64-musl.tar.xz

RUN git clone https://github.com/PreswotLab/preswotlab

WORKDIR /tmp/preswotlab

RUN /tmp/node-v14.4.0-linux-x64-musl/npm -i

RUN /tmp/node-v14.4.0-linux-x64-musl/npm run build

RUN npm start 

EXPOSE 4000
