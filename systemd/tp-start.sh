#!/bin/sh
PORT=8540 \
TP_START=2025-09-01 \
DATABASE_URL='jdbc:postgresql://db/typing_ex?user=postgres&password=password' \
java -jar tp.jar


