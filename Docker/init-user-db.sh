#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE $POSTGRES_DB;
    INSERT INTO public.users 
    ("id","full_name","password","email","created_at","updated_at") VALUES
    (1,'Papito',
    '$2b$10$USfIgLqcJ.AtFu4xJt5/z.WSEbdeQLR36SSX4lHC/ZFr8IJ7zixEa',
    'papito@ninjapixel.com',
    now(),now());
EOSQL
