FROM python:3.11-slim

workdir /app

ADD tmp/bin .
ADD tmp/bin.runfiles .
ADD tmp/bin.runfiles_manifest .

ENTRYPOINT ["./bin"]
