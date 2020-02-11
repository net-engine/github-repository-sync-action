FROM alpine:3.11

RUN apk update && apk upgrade && \
    apk add --no-cache git openssh

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
