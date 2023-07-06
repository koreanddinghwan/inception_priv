all: up

up: 
	@echo "up"
	./srcs/requirements/tools/init.sh
	docker-compose -f ./srcs/docker-compose.yml up --build -d

rm: down
	@echo "fclean"
	rm -rf /Users/myukang/data

down:
	@echo "clean"
	docker-compose -f ./srcs/docker-compose.yml down
	docker system prune -a

re: rm up
