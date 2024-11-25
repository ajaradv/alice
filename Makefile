.PHONY: install
install:
	poetry install --no-root

.PHONY: install-pre-commit
install-pre-commit:
	poetry run pre-commit uninstall; poetry run pre-commit install

.PHONY: lint
lint:
	poetry run pre-commit run --all-files

.PHONY: migrate
migrate:
	poetry run python -m app.manage migrate

.PHONY: migrations
migrations:
	poetry run python -m app.manage makemigrations

.PHONY: run-server
run-server:
	poetry run python -m app.manage runserver

.PHONY: shell
shell:
	poetry run python -m app.manage shell

.PHONY: superuser
superuser:
	poetry run python -m app.manage createsuperuser

.PHONY: test
test:
	poetry run pytest -v -rs -n auto --show-capture=no

.PHONY: up-dependencies-only
up-dependencies-only:
	test -f .env || touch .env
	docker-compose -f docker-compose.dev.yml up --force-recreate db

.PHONY: update
update: install migrate install-pre-commit ;
