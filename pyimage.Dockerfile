FROM alpine:3.18

workdir /app

ADD tmp/bin .
ADD tmp/bin.runfiles .
ADD tmp/bin.runfiles_manifest .

ENTRYPOINT ["./bin"]
