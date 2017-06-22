#!/bin/bash

if [ -f /etc/nginx/sites-enabled/default ]; then
  sudo rm /etc/nginx/sites-enabled/default
fi

# Nginx
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

# Gunicorn
#sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart

sudo gunicorn -c /home/box/web/etc/gunicorn.conf hello:wsgi_application
sudo gunicorn -c /home/box/web/etc/gunicorn-django.conf ask.wsgi:application