#!/bin/bash
sudo su
apt update
apt -y install apache2 
apt -y install git
git clone https://github.com/CumulusCycles/GCP-Hands-on.git
cp -r GCP-Hands-on/1_Google_Compute_Engine/src /var/www/html/
sudo service apache2 start