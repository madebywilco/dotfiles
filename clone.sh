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

git clone https://github.com/jessarcher/zsh-artisan.git ~/.oh-my-zsh/custom/plugins/artisan

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone git@github.com:madebywilco/dotfiles.git $CODE/dotfiles

# TODO: Get env files and migrate --seed
