# Python-Bazel template

Demonstrates the following:
* Hermetic build with defined toolchain (Python 3.11)
* Run tests
* Run binary
* Have a few dependencies, including one with native extensions (numpy)

## Pre-requisites
`Make` and `Bazel` or `Bazelisk`, [Bazelisk being the preferred install](https://bazel.build/install/bazelisk).

## How-to

```
make run # run the binary
make test # run the tests

```
