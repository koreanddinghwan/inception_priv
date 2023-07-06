if [ ! -d /Users/myukang/data ]; then
	echo "make data directory"
	mkdir /Users/myukang/data
	mkdir /Users/myukang/data/wordpress
	mkdir /Users/myukang/data/wordpress-db
	mkdir /Users/myukang/data/adminer
	mkdir /Users/myukang/data/preswot
else
	echo "data directory already exists"
fi

exit 0;
