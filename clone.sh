#!/bin/sh

echo "Cloning repositories..."

SITES=$HOME/Sites
CODE=$HOME/Code

# Professional
git clone git@github.com:electrictomcat/eagle-med.git $CODE/eaglemed
mysql -u root -p -e 'create database eaglemed'

git clone git@github.com:NYCMode/nycmode-cloud.git $CODE/nycmode
mysql -u root -p -e 'create database nycmode-cloud'

git clone git@github.com:TresColoriJewelry/trescolori-cloud.git $CODE/trescolori
mysql -u root -p -e 'create database tres_cloud_db'

git clone git@github.com:TresColoriJewelry/metalstudio-hk-cloud.git $CODE/metalhkstudio
mysql -u root -p -e 'create database metalstudio_hk_cloud'

# TODO: Get env files and migrate --seed