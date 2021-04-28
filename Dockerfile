FROM alpine:3.3

MAINTAINER rochmind@gmail.com

RUN apk update \
    && apk add squid=3.5.15-r1 \
    && apk add curl \
    && rm -rf /var/cache/apk/*


COPY start-squid.sh /usr/local/bin/

HEALTHCHECK \
  CMD squidclient -h localhost cache_object://localhost/counters || exit 1

ENTRYPOINT ["/usr/local/bin/start-squid.sh"]
