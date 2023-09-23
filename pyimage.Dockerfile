FROM alpin:3.18
# use a python image, in a built setting, the artefacts still rely on an interpreter being installed.
# in bazel, it will use the interpreter.

workdir /app
RUN mkdir bin.runfiles
ADD tmp/bin .
ADD tmp/bin.runfiles bin.runfiles/
ADD tmp/bin.runfiles_manifest .

ENTRYPOINT ["./bin"]
