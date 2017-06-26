#!/bin/bash

sudo ln -s /home/box/web/etc/hello.py  /etc/gunicorn.d/hello.py
sudo ln -s /home/box/web/etc/backend.py  /etc/gunicorn.d/backend.py
sudo /etc/init.d/gunicorn restart
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart