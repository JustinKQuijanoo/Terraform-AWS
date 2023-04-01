#!/bin/bash
###
# Author: Justin Quijano
# Class: SYST35144 Cloud Systems
# Lab 3 - Terraform
###

# install apache webserver  
sudo yum install httpd -y

# create index.html file 
cd /var/www/html
echo "<html><body><h1>Hello from Justin Quijano at $(hostname -f)</h1></body></html>" > index.html

# restart and enable apache service
systemctl restart httpd
systemctl enable httpd