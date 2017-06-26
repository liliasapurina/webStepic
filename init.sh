# Nginx
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

# Gunicorn
sudo ln -sf /home/box/web/etc/gunicorn.conf.py /etc/gunicorn.d/gunicorn.conf.py
gunicorn -c /etc/gunicorn.d/gunicorn.conf.py ask.wsgi:application

# Mysql
sudo /etc/init.d/mysql start
mysql -uroot -e "CREATE DATABASE djbase;"
mysql -uroot -e "CREATE USER 'django@localhost' IDENTIFIED BY 'qwerty';"
mysql -uroot -e "GRANT ALL ON djbase.* TO 'django@localhost';"
mysql -uroot -e "FLUSH PRIVILEGES;"