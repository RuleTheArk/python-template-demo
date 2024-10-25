.DEFAULT_GOAL := all

.PHONY: all
all: ## Show the available make targets.
	@echo "Usage: make <target>"
	@echo ""
	@echo "Targets:"
	@fgrep "##" Makefile | fgrep -v fgrep

.PHONY: clean
clean: ## Clean the temporary files.
	rm -rf .pytest_cache
	rm -rf .mypy_cache
	rm -rf .coverage
	rm -rf .ruff_cache
	rm -rf megalinter-reports

.PHONY: run
run:  ## Run the application
	pipenv run python python_template_demo

.PHONY: format
format:  ## Format the code.
	pipenv run black .
	pipenv run ruff check . --fix

.PHONY: lint
lint:  ## Run all linters (black/ruff/pylint/mypy).
	pipenv run black --check .
	pipenv run ruff check .
	make mypy

.PHONY: test
test:  ## Run the tests and check coverage.
	pipenv run pytest -n auto --cov=python_template_demo --cov-report term-missing --cov-fail-under=100

.PHONY: mypy
mypy:  ## Run mypy.
	pipenv run mypy python_template_demo

.PHONY: install
install:  ## Install the dependencies excluding dev.
	pipenv install

.PHONY: install-dev
install-dev:  ## Install the dependencies including dev.
	pipenv install --dev

.PHONY: megalint
megalint:  ## Run the mega-linter.
	docker run --platform linux/amd64 --rm \
		-v /var/run/docker.sock:/var/run/docker.sock:rw \
		-v $(shell pwd):/tmp/lint:rw \
		oxsecurity/megalinter:v7
