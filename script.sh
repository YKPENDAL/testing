#!/bin/bash

# Display the current working directory
echo "Current directory: $(pwd)"

# Update and upgrade
sudo apt update
sudo apt upgrade -y
 
# Nginx installation
sudo apt install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx

# MySQL installation
sudo apt-get install -y mysql-server
sudo systemctl start mysql
sudo systemctl enable mysql
sudo systemctl status mysql

# JDK installation
sudo apt-get install -y openjdk-18-jdk
java -version
