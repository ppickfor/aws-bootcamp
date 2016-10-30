#!/bin/bash
# update the system
yum update -y

# install (and start) Apache and PHP
yum install httpd php -y
chkconfig httpd on
service httpd start

# copy files from S3
aws s3 cp s3://bootcamp-netremedies/ /var/www/html --recursive
