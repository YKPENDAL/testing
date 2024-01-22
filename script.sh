#!/bin/bash

# Function to run commands with and handle password input
run_with_sudo() {
  echo "Executing: sudo $*"
  sudo -S <<< "$PASSWORD" "$@"
}

# Set your sudo password
PASSWORD='yash@12345'


# Update and upgrade
run_with_sudo apt update
run_with_sudo apt upgrade -y
 
# Nginx installation
run_with_sudo apt install -y nginx
run_with_sudo systemctl start nginx
run_with_sudo systemctl enable nginx
run_with_sudo systemctl status nginx

# MySQL installation
run_with_sudo apt-get install -y mysql-server
run_with_sudo systemctl start mysql
run_with_sudo systemctl enable mysql
run_with_sudo systemctl status mysql

# JDK installation
run_with_sudo apt-get install -y openjdk-11-jdk
java -version
