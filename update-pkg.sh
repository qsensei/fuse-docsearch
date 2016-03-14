#!/bin/sh

# if docker-compose was installed via buildout it is in $PWD/bin
PATH=$PWD/bin:$PATH
. ./env.sh
docker-compose run --rm fuse fusectl setup /fuse/ext/pkg
