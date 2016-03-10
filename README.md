# Fuse Document Search

## Basics

- edit *docsearch.env*
  * set *DOCS_DIR* to point to the directory containing the documents
- run `./docsearch.sh up`
- maybe edit *./pkg/contentschema.json* and *./pkg/indexschema.json*
  * run `./docsearch.sh update_pkg`
