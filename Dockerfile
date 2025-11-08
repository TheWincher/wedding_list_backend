FROM alpine:latest

RUN apk add --no-cache rust cargo

EXPOSE 3000