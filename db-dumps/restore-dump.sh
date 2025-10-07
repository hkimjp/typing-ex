#!/bin/sh
if [ -z "$1" ]; then
  echo "usage: $0 file.dump"
  exit
fi

dropdb typing_ex
createdb typing_ex
pg_restore -U postgres -h localhost -Fc -d typing_ex $1

