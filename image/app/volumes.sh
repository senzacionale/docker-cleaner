#!/bin/sh
# see: https://gist.github.com/bastman/5b57ddb3c11942094f8d0a97d461b430
set -e

echo "Clean docker volumes"
sh -c -x `docker volume rm $(docker volume ls -qf "dangling=true")` ||:
sh -c -x `docker volume ls -qf dangling=true | xargs -r docker volume rm` ||:
