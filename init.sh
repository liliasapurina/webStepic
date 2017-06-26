sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
#sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo ln -sf /home/box/web/etc/gunicorn.conf.py /etc/gunicorn.d/gunicorn.conf.py
#gunicorn -c /etc/gunicorn.d/hello.py hello:app
gunicorn -c /etc/gunicorn.d/gunicorn.conf.py ask.wsgi:application
