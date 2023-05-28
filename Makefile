up:
	docker compose -f srcs/docker-compose.yml up --build
down:
	docker compose -f srcs/docker-compose.yml down

# restart: down up

prune:
	docker compose  -f srcs/docker-compose.yml rm -v  --all 
	docker system prune --all

