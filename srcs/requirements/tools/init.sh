# !/bin/bash

echo "Hi $USER"
echo "init.sh start"
echo "Are you in VM? (y/n)"
read answer
VOLUMEDIR=''

if [ $answer = 'y' ]; then
	echo "You are in VM"
	VOLUMEDIR='/home/myukang/data'
	echo "VOLUMEDIR=$VOLUMEDIR" >> ../.env
else
	echo "You are not in VM"
	VOLUMEDIR="/Users/$USER/data"
	echo "VOLUMEDIR=$VOLUMEDIR" >> ../.env
fi

# setup dirs
if [ ! -f $VOLUMEDIR ]; then
	echo "$VOLUMEDIR directory is not exist"
	mkdir $VOLUMEDIR 
	mkdir $VOLUMEDIR/wordpress
	mkdir $VOLUMEDIR/wordpress-db
fi

if [ ! -f $VOLUMEDIR/wordpress ]; then
	echo "wordpress dir is not exist"
	mkdir $VOLUMEDIR/wordpress
fi

if [ ! -f $VOLUMEDIR/wordpress-db ]; then
	echo "wordpress-db dir is not exist"
	mkdir $VOLUMEDIR/wordpress-db
fi

# this is for wordpress
# if you want to change wordpress version, change this url
# or you can change this to download site from your own
if [ ! -f $VOLUMEDIR/wordpress/index.php ]; then
	echo "wordpress file is not exist"
	wget https://wordpress.org/latest.tar.gz -P $VOLUMEDIR/wordpress
	tar -xvf $VOLUMEDIR/wordpress/latest.tar.gz -C $VOLUMEDIR/wordpress
fi

#setup host file
if [ ! -f /etc/hosts ]; then
	echo "hosts file is not exist"
	touch /etc/hosts
fi

#setup domain name
echo "127.0.0.1 $DOMAIN_NAME" >> /etc/hosts

#setup wp-config.php
cp ../wordpress/conf/wp-config.php $VOLUMEDIR/wordpress/wp-config.php
