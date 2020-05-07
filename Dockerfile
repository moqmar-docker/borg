FROM alpine:edge
RUN echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && apk add --no-cache borgbackup borgmatic@testing && mkdir -p /var/lib/borg
ENV BORG_BASE_DIR=/var/lib/borg
ENV BORG_CACHE_DIR=/var/lib/borg/cache
ENV BORG_CONFIG_DIR=/var/lib/borg/config
ENV BORG_SECURITY_DIR=/var/lib/borg/security
ENV BORG_KEYS_DIR=/var/lib/borg/keys
WORKDIR /var/lib/borg
