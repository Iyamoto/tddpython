#!/usr/bin/env bash

project='superlists'
appname='lists'

cd /vagrant/django/
# django-admin startproject ${project}
cd ${project}
# python manage.py startapp ${appname}

# Clear DB
rm db.sqlite3
python manage.py migrate --noinput

# Copy static files
python manage.py collectstatic --noinput

# Run unit tests
python manage.py test
unittestresult=$?

# Run server
if [ ${unittestresult} -eq 0 ]; then
    # Django web server
    python manage.py runserver 127.0.0.1:8000

    # Gunicorn
    # gunicorn --env DJANGO_SETTINGS_MODULE=${project}.settings ${project}.wsgi -w 4 -b :8000
fi

# Run functional tests
