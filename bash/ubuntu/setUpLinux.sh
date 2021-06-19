#!/bin/bash

# Update and install all necessary workspace utilities for a linux machine

#update and upgrade machine
sudo apt-get update
sudo apt-get upgrade

#install necessary tools and applications

echo 'apache'
sudo apt install apache2

echo 'python'
sudo apt install python3-pip
pip3 --version

echo 'MySQL'
sudo apt install mysql-server

echo 'MongoDB'
sudo apt-get install gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

echo 'Docker'
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo 'Terraform'
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform

echo 'NMAP'
sudo apt-get install nmap

echo 'PostgreSQL'
sudo apt install postgresql postgresql-contrib

echo 'MTR'
sudo apt install mtr


