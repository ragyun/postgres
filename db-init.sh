#!/bin/bash
set -e

mkdir -pv "/var/lib/postgresql/db-data/adcsmart_generals"
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -c "CREATE TABLESPACE adcsmart_generals OWNER adcsmartdba  LOCATION '/var/lib/postgresql/db-data/adcsmart_generals'"

mkdir -pv "/var/lib/postgresql/db-data/adcsmart_indexes"
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -c "CREATE TABLESPACE adcsmart_indexes OWNER adcsmartdba LOCATION '/var/lib/postgresql/db-data/adcsmart_indexes'"

mkdir -pv "/var/lib/postgresql/db-data/adcsmart_logs"
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -c "CREATE TABLESPACE adcsmart_logs OWNER adcsmartdba LOCATION '/var/lib/postgresql/db-data/adcsmart_logs'"
