#!/bin/sh

echo "Cloning repositories..."

SITES=$HOME/Sites
CODE=$HOME/Code

# Professional
git clone git@github.com:electrictomcat/eagle-med.git $CODE/eagle-med
mysql -u root -p -e 'create database eagle_med'

git clone git@github.com:NYCMode/nycmode-cloud.git $CODE/nycmode-cloud
mysql -u root -p -e 'create database nycmode_cloud'

git clone git@github.com:TresColoriJewelry/trescolori-cloud.git $CODE/trescolori-cloud
mysql -u root -p -e 'create database tc_cloud_app'

git clone git@github.com:TresColoriJewelry/metalstudio-hk-cloud.git $CODE/metalstudio-hk-cloud
mysql -u root -p -e 'create database metalstudio_hk_cloud'

# TODO: Get env files and migrate --seed