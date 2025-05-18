#!/bin/sh

echo "Waiting for Postgres..."
/src/wait-for-it.sh db:5432 --timeout=30 --strict -- echo "Postgres is up"

echo "Running migrations..."
python manage.py migrate

echo "Starting server..."
python manage.py runserver 0.0.0.0:8000
