#!/bin/bash

# check the ative directory
pwd

# Update the package list
sudo apt update

# Update the package list
sudo apt upgrade

# Install Nginx
sudo apt install -y nginx

# Start Nginx
sudo systemctl start nginx

# Enable Nginx to start on boot
sudo systemctl enable nginx

# Allow Nginx through the firewall (if applicable)
#sudo ufw allow 'Nginx HTTP'

# Display Nginx status
sudo systemctl status nginx
