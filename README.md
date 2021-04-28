Squid
=====

Slim image of Squid 5.0 running under Alpine Linux 3.13

How to use
=========

```
docker run -p 3128:3128 rochmind/squid
```

With bespoke configuration:

```
docker run  -v <configPath>/squid.conf:/etc/squid/squid.conf:ro \
            -v <configPath/cache:/var/cache/squid:rw \
            -v /var/log/squid:/var/log/squid:rw \
            -v /etc/localtime:/etc/localtime:ro \
            -p 3128:3128 \
            rochmind/squid
```
With restart

```
docker run --name squid --restart unless-stopped -p 3128:3128 rochmind/squid
```
