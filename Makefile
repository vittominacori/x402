.PHONY: install-dev format lint test precommit-install help

install-dev:
@python -m pip install --upgrade pip
@python -m pip install pre-commit
@pre-commit install || true
@echo "If pre-commit didn't install hooks automatically run: pre-commit install"

format:
@pre-commit run --all-files --hook-stage manual

lint:
@pre-commit run --all-files

test:
@echo "Running core tests (best-effort across languages)"
@cd go && go test ./... || true
@cd typescript && pnpm -w test || true
@cd python && pytest -q || true

precommit-install:
@pre-commit install

help:
@echo "Targets: install-dev, format, lint, test, precommit-install"
