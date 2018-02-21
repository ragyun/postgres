#!/bin/bash
set -e

for tablespace in adcsmart_generals adcsmart_indexes adcsmart_logs; do
	mkdir -pv "/var/lib/postgresql/db-data/$tablespace"
	psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -c "CREATE TABLESPACE dbspace LOCATION '/var/lib/postgresql/db-data/$tablespace'"
done
