FROM arm64v8/alpine:3.7

MAINTAINER Derek Su (naturlich1986@gmail.com)

RUN \
  adduser -h /app -s /sbin/nologin -D app && \
  apk add --update --no-cache htop && \
  rm -f /tmp/* /etc/apk/cache/*

USER app

WORKDIR /app

ENTRYPOINT ["htop"]
