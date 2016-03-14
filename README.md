# Fuse Document-Search


## Basics

### setup
- edit *env.sh*
  * set *DOCSEARCH_DIR* to point to the directory containing the documents
  * set *DOCSEARCH_PORT* to free port used for Fuse Document-Search

### run
- run `source ./env.sh`
- run docker-compose commands - like `docker-compose up -d` to start docsearch

### adjust schema
- edit *./pkg/contentschema.json* and *./pkg/indexschema.json*
- run `./update-pkg.sh` and restart docsearch with `docker-compose restart`
