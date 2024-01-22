#!/bin/bash

# Display the current working directory
echo "Current directory: $(pwd)"

# Function to run commands with sudo and handle password input
run_with_sudo() {
  if [ -z "$SUDO_PASSWORD" ]; then
    echo "Error: SUDO_PASSWORD is not set"
    exit 1
  fi

  # Set the sudo password
  echo "$SUDO_PASSWORD" | sudo -S -u "$SUDO_USERNAME" "$@"
  if [ $? -ne 0 ]; then
    echo "Error: Failed to execute command with sudo"
    exit 1
  fi
}

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
