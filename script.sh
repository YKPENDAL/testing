#!/bin/bash

# Function to run commands with sudo and handle password input
run_with_sudo() {
  if [ -z "$PASSWORD" ]; then
    echo "Error: PASSWORD variable is not set"
    exit 1
  fi

  echo "Executing: sudo $*"
  echo "$PASSWORD" | sudo -S -i "$@"
  if [ $? -ne 0 ]; then
    echo "Error: Failed to execute command with sudo"
    exit 1
  fi
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
run_with_sudo apt-get install -y openjdk-18-jdk
java -version
