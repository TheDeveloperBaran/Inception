all: data db wp up

up:
	docker-compose -f ./srcs/docker-compose.yml up -d
data:
	mkdir /home/bakilic/data
db:
	mkdir /home/bakilic/data/db
wp:
	mkdir /home/bakilic/data/wp

down:
	docker-compose -f ./srcs/docker-compose.yml down

.PHONY: up data db wp down
