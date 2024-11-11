FROM alpine:latest

RUN apk add --no-cache bird

ENTRYPOINT ["/usr/sbin/bird"]

CMD ["-d"]
