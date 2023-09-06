#!/bin/bash

sudo yum install httpd -y

cd /var/www/html/

sudo echo "hi from terraform "> index.html

sudo service httpd start