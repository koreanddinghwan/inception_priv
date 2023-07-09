#! /bin/ash

mv /tmp/chatServer /var/chatServer

echo "Starting chatServer"
cd /var/chatServer
npm install
npm run build
npm run start
