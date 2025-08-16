#!/bin/bash
sudo su
apt update
apt -y install apache2 
apt -y install git
git clone https://github.com/CumulusCycles/GCP-Hands-on.git
cp GCP-Hands-on/1_Google_Compute_Engine/index.html /var/www/html/index.html 
sudo service apache2 start