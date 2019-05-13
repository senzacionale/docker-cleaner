#!/bin/sh
set -e

echo "Clean postgres log"
sh -c -x `rm /opt/docker/postgres/data/postgres/pg_log/*` ||:
