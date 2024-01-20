#!/bin/bash

sudo apt update

sudo apt upgrade

# nginx install
sudo apt install -y nginx

sudo systemctl start nginx

sudo systemctl enable nginx

sudo systemctl status nginx


# mysql install
sudo apt-get install -y mysql-server
            
sudo systemctl start mysql
            
sudo systemctl enable mysql

sudo systemctl status mysql