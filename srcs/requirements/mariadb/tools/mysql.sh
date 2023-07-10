# check volume, if empty, install mysql, if not, use existing volume
if [ ! -d /var/lib/mysql/mysql ]; then
	echo "=> Installing MySQL ..."
	/usr/bin/mysql_install_db --user=mysql --datadir=/var/lib/mysql > /dev/null 2>&1
	echo "=> Done!"

	echo "=> Creating admin user ..."
	#daemon으로 실행
	mariadbd-safe --user=mysql --datadir=/var/lib/mysql > /dev/null 2>&1 &

	sleep 5

	mysql -e "
	CREATE DATABASE ${WP_DB_NAME};
	CREATE DATABASE ${CHAT_SERVER_DBNAME};

	CREATE USER ${DB_ADMIN}@'%' IDENTIFIED BY '${DB_ADMIN_PASSWORD}';
	GRANT ALL PRIVILEGES ON *.* TO ${DB_ADMIN}@'%' WITH GRANT OPTION;
	FLUSH PRIVILEGES;

	CREATE USER ${DB_USER}@'%' IDENTIFIED BY '${DB_PASSWORD}';
	GRANT ALL PRIVILEGES ON *.* TO ${DB_USER}@'%';
	FLUSH PRIVILEGES;
	"

	#daemon 종료
	mariadb-admin shutdown

else
	echo "=> Using an existing volume of MySQL"
fi

mysqld --datadir='/var/lib/mysql' --user=mysql --console
