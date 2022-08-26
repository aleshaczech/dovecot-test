FROM alpine:3.16.2

COPY files/ /

RUN apk add --no-cache \
        dovecot=2.3.19.1-r0 \
        dovecot-submissiond=2.3.19.1-r0

EXPOSE 587

ENTRYPOINT ["/usr/sbin/dovecot"]

CMD ["-F", "-c", "/etc/dovecot/dovecot.conf"]
