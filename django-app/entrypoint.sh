#!bin/sh
python manage.py makemigrations
python manage.py migrate
# python manage.py runserver 0.0.0.0:8000
python manage.py collectstatic
gunicorn core.wsgi:application --bind 0.0.0.0:8000