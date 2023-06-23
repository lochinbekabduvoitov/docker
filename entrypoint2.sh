#!/bin/bash

python manage.py migrate --no-input

python manage.py collectstatic --no-input

gunicorn dockerdjango.wsgi:application --bind "80.89.228.71:8000"