#!/bin/bash
# update the system
yum -y update

# install (and start) Apache and PHP
yum install httpd php -y
chkconfig httpd on
service httpd start

# copy files from S3
aws s3 cp s3://bootstrap.luigi.plumbing/index.html /var/www/html
