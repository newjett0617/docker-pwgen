FROM docker.io/library/alpine:3.12

RUN apk add --update pwgen && \
  rm -rf /var/cache/apk

ENTRYPOINT [ "/usr/bin/pwgen" ]

CMD [ "--secure", "--numerals", "--capitalize", "-1" ]