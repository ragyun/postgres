#!/bin/bash
set -e

mkdir -pv "/var/lib/postgresql/db-data/adcsmart_generals"
psql -v --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -c "CREATE TABLESPACE adcsmart_generals OWNER adcsmartdba  LOCATION '/var/lib/postgresql/db-data/adcsmart_generals'" > /dev/null 2>&1

mkdir -pv "/var/lib/postgresql/db-data/adcsmart_indexes"
psql -v --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -c "CREATE TABLESPACE adcsmart_indexes OWNER adcsmartdba LOCATION '/var/lib/postgresql/db-data/adcsmart_indexes'" > /dev/null 2>&1

mkdir -pv "/var/lib/postgresql/db-data/adcsmart_logs"
psql -v --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -c "CREATE TABLESPACE adcsmart_logs OWNER adcsmartdba LOCATION '/var/lib/postgresql/db-data/adcsmart_logs'" > /dev/null 2>&1
