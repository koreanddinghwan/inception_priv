all: up

up: 
	@echo "up"
	./srcs/requirements/tools/init.sh
	docker-compose -f ./srcs/docker-compose.yml up --build -d

rm: down
	@echo "fclean"
	./srcs/requirements/tools/clear.sh
	docker system prune -a

down:
	@echo "clean"
	docker-compose -f ./srcs/docker-compose.yml down

re: rm up
