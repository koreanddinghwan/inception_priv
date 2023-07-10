#! /bin/ash
cd /var

git clone https://github.com/koreanddinghwan/chatServer

cd chatServer
npm install
npm run start:dev
