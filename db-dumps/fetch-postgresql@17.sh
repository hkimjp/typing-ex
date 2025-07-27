#!/bin/sh
set -o errexit -o nounset -o pipefail
SERV=app.melt
DUMP=postgresql@17
TODAY=`date +%F`

ssh ${SERV} "cd ${DUMP} && just dump typing_ex"
scp ${SERV}:${DUMP}/dump/typing_ex-${TODAY}.dump .

# ❯ ./fetch-postgresql@17.sh
# docker exec -it postgresql17-postgres-1 pg_dump -U postgres -h localhost -Fc -f `date +/dump/typing_ex-%F.dump` typing_ex
# the input device is not a TTY
# error: Recipe `dump` failed on line 15 with exit code 1
# typing_ex-2025-06-24.dump                         100%  643KB  42.8MB/s   00:00



