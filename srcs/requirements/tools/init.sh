source srcs/.env

echo $VOLUMEDIR

if [ ! -d $VOLUMEDIR ]; then
	echo "make data directory"
	mkdir $VOLUMEDIR 
	mkdir $VOLUMEDIR/resume
	mkdir $VOLUMEDIR/wordpress
	mkdir $VOLUMEDIR/wordpress-db
	mkdir $VOLUMEDIR/adminer
	mkdir $VOLUMEDIR/chatServer
else
	echo "data directory already exists"
fi

exit 0;
