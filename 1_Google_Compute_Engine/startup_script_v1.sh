#!/bin/bash
sudo su
apt update
apt -y install apache2 

# Get the webserver's hostname
SERVER_NAME=$(hostname)

# Get the webserver's IP address (first non-loopback IP)
SERVER_IP=$(hostname -I | awk '{print $1}')

# Create or overwrite the healthcheck.html file with the server name and IP
echo "<h1>Webserver Health Check</h1>" > /var/www/html/healthcheck.html
echo "<p>Server Name: $SERVER_NAME</p>" >> /var/www/html/healthcheck.html
echo "<p>Server IP: $SERVER_IP</p>" >> /var/www/html/healthcheck.html

sudo service apache2 start