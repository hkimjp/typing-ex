#!/usr/bin/env bash
# restore to local (homebrew) postgresql.
#
if [ -z "$2" ]; then
  echo "usage: $0 <db> <dump file>"
  exit 1
fi

dropdb -U postgres -h localhost $1
createdb -U postgres -h localhost $1
pg_restore -U postgres -h localhost -Fc -d $1 < $2
