FROM alpine:3

RUN apk --no-cache add git npm perl

COPY LICENSE README.md default.npmrc /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
