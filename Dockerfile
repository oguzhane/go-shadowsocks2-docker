# go-shadowsocks2-docker
#
# VERSION 0.0.1

FROM golang:1.11.1-alpine3.8

MAINTAINER Oguzhan Ergin <oguzhanergin13@gmail.com>

RUN apk add --no-cache git

RUN go get -u -v github.com/shadowsocks/go-shadowsocks2

ENTRYPOINT go-shadowsocks2 -s "ss://${SS_METHOD}:${SS_PASSWORD}@:${SS_PORT}"
