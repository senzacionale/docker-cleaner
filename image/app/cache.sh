#!/bin/sh
set -e

echo "Clean docker cache"
sh -c -x `docker builder prune -f` ||:
