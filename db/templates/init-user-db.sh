#!/bin/bash
set -e

echo "# Skeleton App config:" >> /var/lib/postgresql/data/postgresql.conf
echo "shared_preload_libraries = 'pg_stat_statements'" >> /var/lib/postgresql/data/postgresql.conf

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
  CREATE USER root SUPERUSER;

  CREATE USER "skeleton" SUPERUSER;

  CREATE DATABASE "skeleton-dev";
  GRANT ALL PRIVILEGES ON DATABASE "skeleton-dev" TO "skeleton";

  CREATE DATABASE "skeleton-test";
  GRANT ALL PRIVILEGES ON DATABASE "skeleton-test" TO "skeleton";
EOSQL
