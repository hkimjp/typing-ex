#!/usr/bin/env bash
#
# if this fails,
# login to container, exec dropdb ... from inside shell.

if [ -z "$2" ]; then
  echo "usage: $0 <db> <dump file>"
  exit 1
fi

EXEC='docker exec postgresql18-postgres-1'

${EXEC} dropdb -U postgres -h localhost $1
${EXEC} createdb -U postgres -h localhost $1
${EXEC} pg_restore -U postgres -h localhost -Fc -d $1 < $2
