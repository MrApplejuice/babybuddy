#!/bin/bash

echo "XXXXXXXXXXXX"

export DJANGO_SETTINGS_MODULE=babybuddy.settings.development

cd /app
python3 manage.py migrate
python3 manage.py createcachetable
gunicorn babybuddy.wsgi:application -b 0.0.0.0:9000 --timeout 30 --log-file -
