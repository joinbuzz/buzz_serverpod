#!/bin/sh

# Wait for database to be up (timeout after 60 seconds)
echo "### Wait for Postgres"
/app/tests/docker/tests_single_server/wait-for-it.sh postgres:5432 -t 60 -- echo "### Postgres is UP"
/app/tests/docker/tests_single_server/wait-for-it.sh redis:6379 -t 60 -- echo "### Redis is UP"
echo ""

# Reset the database
echo "### Resetting database"
env PGPASSWORD="password" psql -h postgres -U postgres -d serverpod_test -f /app/tests/docker/tests_single_server/reset_db.pgsql

# Create tables
echo "### Setting up tables"
env PGPASSWORD="password" psql -h postgres -U postgres -d serverpod_test -f /app/packages/serverpod/generated/tables.pgsql
env PGPASSWORD="password" psql -h postgres -U postgres -d serverpod_test -f /app/tests/serverpod_test_server/generated/tables.pgsql
env PGPASSWORD="password" psql -h postgres -U postgres -d serverpod_test -f /app/modules/serverpod_auth/serverpod_auth_server/generated/tables.pgsql
env PGPASSWORD="password" psql -h postgres -U postgres -d serverpod_test -f /app/tests/serverpod_test_module/serverpod_test_module_server/generated/tables.pgsql

echo ""

# We are all set to start the server
echo "### Starting test server"
pwd
dart bin/main.dart -m production
