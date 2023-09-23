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

## Github Actions
This also includes a Github Actions workflow that runs the tests, builds a docker image on push and pull requests.
Most of it should be self-explanatory, but the `docker_images` parameter is worth explaining:
This takes a array of strings, comma-separated, which will be shaped into the respective docker image in the form of:
`image-name: image-name.Dockerfile`, where `image-name` will be used as the ultimate name, and the Dockerfile built for it has the filename `image-name.Dockerfile`.
This allows for multiple docker images to be built from the same repository, and the Dockerfile to be named after the image it builds.

## TODO

- [] Pass secrets properly