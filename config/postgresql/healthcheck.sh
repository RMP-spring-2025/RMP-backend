#!/bin/bash

set -e

databases=("db" "product_db" "user_db")

for db in "${databases[@]}"; do
    if psql -h "localhost" -U "admin" -d "admin_db" -XAtc "SELECT 'ok' FROM pg_database WHERE datname='$db'" | grep 'ok'; then
        echo "Database '$db' is ready"
    else
        echo "Database '$db' is not ready"
        exit 1
    fi
done

echo "All databases are ready"
exit 0
