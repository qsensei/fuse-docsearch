#!/bin/sh

# if docker-compose was installed via buildout it is in $PWD/bin
PATH=$PWD/bin:$PATH
set -a
. $PWD/docsearch.env
docker-compose $@
