SHELL := /bin/bash

.PHONY: build
build:
	bazelisk build //...	

.PHONY: test
test:
	bazelisk test //...

.PHONY: run
run:
	bazelisk run :bin
