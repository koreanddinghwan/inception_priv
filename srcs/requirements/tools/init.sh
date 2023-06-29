# setup dirs
if [ ! -f /home/myukang/data ]; then
	echo "/home/myukang/data directory is not exist"
	mkdir /home/myukang/data
	mkdir /home/myukang/data/wordpress
	mkdir /home/myukang/data/wordpress-db
fi

if [ ! -f /home/myukang/data/wordpress ]; then
	echo "wordpress dir is not exist"
	mkdir /home/myukang/data/wordpress
fi

if [ ! -f /home/myukang/data/wordpress-db ]; then
	echo "wordpress-db dir is not exist"
	mkdir /home/myukang/data/wordpress-db
fi

if [ ! -f /home/myukang/data/wordpress/index.php ]; then
	echo "wordpress file is not exist"
	wget https://wordpress.org/latest.tar.gz -P /home/myukang/data/wordpress
	tar -xvf /home/myukang/data/wordpress/latest.tar.gz -C /home/myukang/data/wordpress
fi


