#!/bin/bash

# Update the package list
sudo apt update

# Install Apache HTTP Server
sudo apt install -y apache2

# Ensure the web root directory exists and is empty
sudo rm -rf /var/www/html/*
sudo mkdir -p /var/www/html

# Start and enable Apache HTTP Server
sudo systemctl start apache2
sudo systemctl enable apache2
