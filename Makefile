all: up

up :
	mkdir -p ~/data/mariadb ~/data/wordpress
	docker compose -f srcs/docker-compose.yml up -d

down :
	docker compose -f srcs/docker-compose.yml down

clean :
	docker system prune --volumes -f -a

.PHONY : all up down clean