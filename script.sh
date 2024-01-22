#!/bin/bash

# Function to run commands with and handle password input

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
apt-get install -y openjdk-11-jdk
java -version
