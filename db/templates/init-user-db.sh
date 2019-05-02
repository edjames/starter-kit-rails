#!/bin/bash
set -e

echo "# StarterKit App config:" >> /var/lib/postgresql/data/postgresql.conf
echo "shared_preload_libraries = 'pg_stat_statements'" >> /var/lib/postgresql/data/postgresql.conf

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
  CREATE USER root SUPERUSER;

  CREATE USER "starter-kit" SUPERUSER;

  CREATE DATABASE "starter-kit-dev";
  GRANT ALL PRIVILEGES ON DATABASE "starter-kit-dev" TO "starter-kit";

  CREATE DATABASE "starter-kit-test";
  GRANT ALL PRIVILEGES ON DATABASE "starter-kit-test" TO "starter-kit";
EOSQL
