.DEFAULT_GOAL := help
help:
	@perl -nle'print $& if m{^[a-zA-Z_-]+:.*?## .*$$}' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-25s\033[0m %s\n", $$1, $$2}'

lint: ## Check style with black
	black --check --exclude="/(postgres|venv|migrations|\.git)/" .

format: ## Format style with black
	black --exclude="/(postgres|venv|migrations|\.git)/" .

docker.recreate.django: ## Recreate Django image
	docker-compose -f docker-compose.dev.yaml build --no-cache --force-rm django
	docker-compose -f docker-compose.dev.yaml up --force-recreate --no-deps -d django
	make run.loaddata

run.makemigrations: ## Makemigrations
	docker-compose -f docker-compose.dev.yaml exec -T django bash -c "python3 manage.py makemigrations"

run.migrate: ## Migrate
	docker-compose -f docker-compose.dev.yaml exec -T django bash -c "python3 manage.py migrate"

run.loaddata: ## Load initial data
	# Remove database
	rm -rf database.sqlite
	# Remove media
	rm -rf media
	# Migrate
	docker-compose -f docker-compose.dev.yaml exec -T django bash -c "python3 manage.py migrate"

run.loaddata.test: ## Load initial data test
	make run.loaddata
	# Add superuser: alias "admin" - password "admin"
	docker-compose -f docker-compose.dev.yaml exec -T django bash -c "cat data/create_superuser.py | python3 manage.py shell"
	# Add more users: alias random - password "password"
	docker-compose -f docker-compose.dev.yaml exec -T django bash -c "cat data/create_users.py | python3 manage.py shell"

run.server: ## Run server
	docker-compose -f docker-compose.dev.yaml up
