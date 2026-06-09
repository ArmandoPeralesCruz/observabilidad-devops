#!/bin/bash
# Iniciar Gunicorn en background
gunicorn --bind 127.0.0.1:8000 --workers 2 --daemon myapp.wsgi:application

# Iniciar Apache en foreground
apache2ctl -D FOREGROUND
