#!/bin/bash

# Purpose of this bash script: Install Apache, MySQL, and PostgreSQL, MongoDB on Linux VM

# update and upgrade VM 
echo 'updating and upgrading'
sudo apt update
sudo apt upgrade

# Apache
echo 'installing Apache'
sudo apt install apache2

# MySQL
echo 'installing MySQL'
sudo apt install mysql-server

# PostgreSQL; '-contrib' adds additional utilities and packages
echo 'installing PostreSQL'
sudo apt install postgresql postgresql-contrib

# MongoDB
#  -- ensure gnupg is installed
echo 'installing MongoDB'
sudo apt-get install gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -


echo 'set executable permission on createUsers.sh'
chmod +x createUser.sh

echo 'running createUser.sh bash script'
./createUsers.sh

sleep 2s

echo 'verifying users, Random1 and Random2, where created'
users
