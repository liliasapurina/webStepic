#!/bin/bash

# Install
sudo pip install django-autofixture pytz
sudo apt-get install -y w3m

# Nginx
if [ -f /etc/nginx/sites-enabled/default ]; then
  sudo rm /etc/nginx/sites-enabled/default
fi

touch /home/box/nginx.log
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/ask.conf
sudo /etc/init.d/nginx restart

# Gunicorn (ver. 17.5)
touch /home/box/gunicorn.log
sudo ln -sf /home/box/web/etc/gunicorn_ask.conf /etc/gunicorn.d/ask
sudo /etc/init.d/gunicorn restart