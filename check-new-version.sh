#!/bin/sh
update_webhook=
upstream=$(curl -s "https://pkgs.alpinelinux.org/package/edge/community/x86_64/borgbackup" | htmlq -t '[aria-label="Flag this package out of date"]')
downstream=$(curl -s "https://hub.docker.com/v2/repositories/library/alpine/tags/$upstream" | jq -r ".name")
if [ "$downstream" != "$upstream" ]; then
  curl "$update_webhook"
fi
