#!/bin/bash
set -eu

#HOST IP
if [[ ! -v CASSANDRA_HOST ]]; then
  CASSANDRA_HOST="127.0.0.1"
else
  if [[ ! "${CASSANDRA_HOST}" =~ ^[0-9]{,3}\.[0-9]{,3}\.[0-9]{,3}\.[0-9]{,3}$ ]]; then
    CASSANDRA_HOST="$(dig ${CASSANDRA_HOST} +short)"
  fi
fi

#PORT
if [[ ! -v CASSANDRA_PORT ]]; then
  CASSANDRA_PORT="9042"
else
  CASSANDRA_PORT="${CASSANDRA_PORT}"
fi

#USERNAME
if [[ ! -v CASSANDRA_USERNAME ]]; then
  CASSANDRA_USERNAME="cassandra"
else
  CASSANDRA_USERNAME="${CASSANDRA_USERNAME}"
fi

#PASSWORD
if [[ ! -v CASSANDRA_PASSWORD ]]; then
  CASSANDRA_PASSWORD="cassandra"
else
  CASSANDRA_PASSWORD="${CASSANDRA_PASSWORD}"
fi

if [[ ! -v WEB_UI_PORT ]]; then
  WEB_UI_PORT="3000"
else
  WEB_UI_PORT="${WEB_UI_PORT}"
fi

COMMAND="cassandra-web --hosts $CASSANDRA_HOST --port $CASSANDRA_PORT --username $CASSANDRA_USERNAME --password $CASSANDRA_PASSWORD --bind $WEB_UI_PORT"

echo $COMMAND 

exec $COMMAND
