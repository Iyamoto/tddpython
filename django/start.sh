#!/usr/bin/env bash

cd /vagrant/django/
# django-admin startproject superlists
cd superlists
python manage.py runserver 0.0.0.0:8000