#!/usr/bin/env bash
# 
docker exec typing-ex-db-1 pg_dump -U postgres -h localhost -d typing_ex -Fc > `date +typing_ex-%F.dump`
