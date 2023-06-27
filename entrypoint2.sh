#!/bin/bash

python manage.py migrate --no-input

python manage.py collectstatic --no-input

gunicorn dockerdjango.wsgi:application --bind "django_gunicorn:8000"