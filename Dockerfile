FROM alpine:edge

RUN apk update && \
  apk add \
    caddy \
    mailcap && \
  rm -rf \
    /var/cache/apk/*

EXPOSE 80
CMD ["/usr/sbin/caddy", "-port", "80", "-root", "/srv/www"]
ADD public /srv/www
