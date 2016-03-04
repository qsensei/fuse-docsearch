#!/bin/sh

# if docker-compose was installed via buildout it is in $PWD/bin
PATH=$PWD/bin:$PATH
set -a
. $PWD/docsearch.env
if [ "$1" = "update_pkg" ]; then
    docker-compose run --rm fuse fusectl setup /fuse/ext/pkg
    exit
fi
docker-compose $@
