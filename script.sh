#!/bin/bash

# Display the current working directory
echo "Current directory: $(pwd)"

# Update and upgrade
apt update
apt upgrade -y
 
# Nginx installation
apt install -y nginx
systemctl start nginx
systemctl enable nginx
systemctl status nginx

# MySQL installation
apt-get install -y mysql-server
systemctl start mysql
systemctl enable mysql
systemctl status mysql

# JDK installation
apt-get install -y openjdk-18-jdk
java -version
