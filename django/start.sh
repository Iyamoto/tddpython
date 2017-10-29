#!/usr/bin/env bash

cd /vagrant/django/
# django-admin startproject superlists
cd superlists
# python manage.py startapp lists

# Clear DB
rm db.sqlite3
python manage.py migrate --noinput

# Run unit tests
python manage.py test

# Run server
python manage.py runserver 0.0.0.0:8000

# Run functional tests
