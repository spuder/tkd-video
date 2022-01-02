all: template 1 2 3 4 5 6 7 8
template:
	./lib/yaml2md.rb
1:
	docker compose -f docker-compose.taegeuk1.yaml up --remove-orphans
2:
	docker compose -f docker-compose.taegeuk2.yaml up --remove-orphans
3:
	docker compose -f docker-compose.taegeuk3.yaml up --remove-orphans
4:
	docker compose -f docker-compose.taegeuk4.yaml up --remove-orphans
5:
	docker compose -f docker-compose.taegeuk5.yaml up --remove-orphans
6:
	docker compose -f docker-compose.taegeuk6.yaml up --remove-orphans
7:
	docker compose -f docker-compose.taegeuk7.yaml up --remove-orphans
8:
	docker compose -f docker-compose.taegeuk8.yaml up --remove-orphans