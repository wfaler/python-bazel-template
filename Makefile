SHELL := /bin/bash

.PHONY: init
init:
	pyenv install 3.11 -s
	pyenv global 3.11
	python -m venv env
	source env/bin/activate

.PHONY: build
build:
	bazelisk build //...	

.PHONY: test
test:
	bazelisk test //...

.PHONY: run
run:
	bazelisk run :bin