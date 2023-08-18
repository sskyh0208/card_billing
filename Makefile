init:
	@make build
	@make up
build:
	docker compose build
up:
	docker compose up -d
rebuild:
	docker compose up -d --build
down:
	docker compose down --remove-orphans
ls:
	docker compose ls
logs:
	docker compose logs
dev-init:
	docker compose exec terraform terraform -chdir=./environments/dev init
dev-plan:
	docker compose exec terraform terraform -chdir=./environments/dev plan
dev-apply:
	docker compose exec terraform terraform -chdir=./environments/dev apply
dev-refresh:
	docker compose exec terraform terraform -chdir=./environments/dev refresh
dev-destroy:
	docker compose exec terraform terraform -chdir=./environments/dev destroy
stg-init:
	docker compose exec terraform terraform -chdir=./environments/stg init
stg-plan:
	docker compose exec terraform terraform -chdir=./environments/stg plan
stg-apply:
	docker compose exec terraform terraform -chdir=./environments/stg apply
stg-refresh:
	docker compose exec terraform terraform -chdir=./environments/stg refresh
stg-destroy:
	docker compose exec terraform terraform -chdir=./environments/stg destroy
prod-init:
	docker compose exec terraform terraform -chdir=./environments/prod init
prod-plan:
	docker compose exec terraform terraform -chdir=./environments/prod plan
prod-apply:
	docker compose exec terraform terraform -chdir=./environments/prod apply
prod-refresh:
	docker compose exec terraform terraform -chdir=./environments/prod refresh
prod-destroy:
	docker compose exec terraform terraform -chdir=./environments/prod destroy