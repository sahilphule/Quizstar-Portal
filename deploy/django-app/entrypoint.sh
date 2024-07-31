#!/bin/sh
python manage.py makemigrations --no-input
python manage.py migrate --no-input
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('sahil', 'admin@myproject.com', '123456')" | python manage.py shell
# python manage.py runserver 0.0.0.0:8000
python manage.py collectstatic --no-input
gunicorn core.wsgi:application --bind 0.0.0.0:8000