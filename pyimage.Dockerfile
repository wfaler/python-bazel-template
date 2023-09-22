FROM alpine:3.18

ADD bazel-bin/bin .
ADD bazel-bin/bin.runfiles .
ADD bazel-bin/bin.runfiles_manifest .

ENTRYPOINT ["./bin"]
