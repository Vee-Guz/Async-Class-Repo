#!/bin/bash

# upgrade and update 
sudo apt-get update
sudo apt-get upgrade

# install nessesary packages

sudo apt install apache2

sudo apt install nodejs

sudo apt install npm

sudo apt install php

npm install -g grunt-cli

# clone phaser directories in /var/www/
cd /var/www/

sudo git clone https://github.com/gamecook/phaser-project-template.git

sudo git clone https://github.com/photonstorm/phaser-examples.git

# change permissions

sudo chown -R www-data:www-data /var/www/*

# run apache

systemctl restart apache2


