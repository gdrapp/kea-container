FROM alpine:3.14

RUN apk update \
    && apk upgrade \
    && apk add tini kea

RUN mkdir -p /run/kea

ENTRYPOINT ["/sbin/tini", "--"]