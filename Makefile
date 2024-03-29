SHELL = /bin/bash

.DEFAULT_GOAL := all
isort = isort test
black = black -S -l 120 --target-version py39 test
flake8 = flake8 test
pytest = pytest --asyncio-mode=strict --log-format="%(levelname)s %(message)s"

.PHONY: install
install:
	pip install -r test/requirements.txt

.PHONY: install-all
install-all: install
	pip install -r test/requirements-dev.txt

.PHONY: format
format:
	$(isort)
	$(black)

.PHONY: init
init:
	pip install -r test/requirements.txt
	pip install -r test/requirements-dev.txt

.PHONY: lint
lint:
	$(flake8)
	$(isort) --check-only --df
	$(black) --check --diff

.PHONY: types
types:
	mypy test

.PHONY: test
test: clean
	$(pytest)

.PHONY: all
all: lint types test

.PHONY: clean
clean:
	@rm -rf `find . -name __pycache__`
	@rm -f `find . -type f -name '*.py[co]' `
	@rm -f `find . -type f -name '*~' `
	@rm -f `find . -type f -name '.*~' `
	@rm -rf .cache htmlcov *.egg-info build dist/*
	@rm -f .coverage .coverage.* *.log current-bandit.json .DS_Store

.PHONY: name
name:
	@printf "Release '%s'\n\n" "$$(git-release-name "$$(git rev-parse HEAD)")"
	@printf "%s revision.is(): sha1:%s\n" "-" "$$(git rev-parse HEAD)"
	@printf "%s name.derive(): '%s'\n" "-" "$$(git-release-name "$$(git rev-parse HEAD)")"

.PHONY: dlstats
dlstats:
	pypistats python_minor --json --monthly $(package) > etc/monthly-downloads.json
	rq '$$.data..*.downloads' etc/monthly-downloads.json | paste -sd+ - | bc
	jq . etc/monthly-downloads.json > etc/tempaway && mv etc/tempaway etc/monthly-downloads.json

.PHONY: covstats
covstats:
	bin/gen_coverage.sh
