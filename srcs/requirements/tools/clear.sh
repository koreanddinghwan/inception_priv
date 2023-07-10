source srcs/.env

echo $VOLUMEDIR
echo "clearing data directory"
echo "모든 데이터가 삭제됩니다. \n 커밋했는지 다시 확인하세요. \n 계속하시겠습니까? (y/n): \c"
read answer
if [ $answer != 'y' ]
then
	exit 1
fi

rm -rf $VOLUMEDIR
