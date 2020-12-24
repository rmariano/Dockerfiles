#!/bin/bash
set -e
export SRC=/usr/local/ccip/Clean-code-in-Python-2/book/src
source ${SRC}/.env/bin/activate
cd ${SRC}
exec "$@"
