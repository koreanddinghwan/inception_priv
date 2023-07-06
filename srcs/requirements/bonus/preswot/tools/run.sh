#!/bin/bash

mv /tmp/preswotlab/* /var/www/preswot

cd /var/www/preswot
npm install
npm run dev
