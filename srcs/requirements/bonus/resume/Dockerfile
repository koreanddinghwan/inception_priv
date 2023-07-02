FROM alpine:3.18

RUN apk update && \
	apk add nodejs yarn git

WORKDIR /home
RUN git clone https://github.com/koreanddinghwan/resume_test 

WORKDIR /home/resume_test
#install deps
RUN yarn install
RUN yarn build

CMD ["yarn", "start"]
EXPOSE 3000
