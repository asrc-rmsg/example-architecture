#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE "golang-starter-template";
    GRANT ALL PRIVILEGES ON DATABASE "golang-starter-template" TO postgres;
EOSQL
