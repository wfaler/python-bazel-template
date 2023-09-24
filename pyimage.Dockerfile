FROM python:3.11-slim
# use a python image, in a built setting, the artefacts still rely on an interpreter being installed.
# in bazel, it will use the toolchain defined interpreter.

workdir /app
# for a Python binary callled "bin", these are the relevant files to copy for a hermetic build
RUN mkdir bin.runfiles
ADD tmp/bin .
ADD tmp/bin.runfiles bin.runfiles/
ADD tmp/bin.runfiles_manifest .

ENTRYPOINT ["./bin"]
