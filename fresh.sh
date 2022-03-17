#!/bin/sh

DOTFILES=$HOME/.dotfiles/

echo "Setting up your Mac..."

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file $DOTFILES/Brewfile

# Set default MySQL root password and auth type
mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'password'; FLUSH PRIVILEGES;"

# Install PHP extensions with PECL
pecl install imagick redis swoole

# Install global Composer packages
composer global require laravel/installer laravel/valet beyondcode/expose botman/installer laravel/envoy laravel/vapor-cli nunomaduro/laracon-schedule statamic/cli tightenco/takeout -W

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Create a Sites directory
mkdir $HOME/Sites

# Create code directory
mkdir $HOME/Code

# Clone Github repositories
$DOTFILES/clone.sh

# Symlink the Mackup config file to the home directory
ln -s $DOTFILES/.mackup.cfg $HOME/.mackup.cfg

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

### Node Packages ###

# Install alfred-jetbrains
npm install -g @bchatard/alfred-jetbrains

# Install Maizelle
npm install -g @maizzle/cli

# Alfred Updater
npm install -g alfred-updater

npm install --global delay-cli

npm install --global wifi-password-cli

npm install --global itunes-remote

npm install lib.cli -g

npm install --global fkill-cli

npm install --global dev-time-cli

npm install --global favicon-emoji

npm install --global lock-cli

npm install pm2 -g

npm i -g vercel

# Set macOS preferences - we will run this last because this will reload the shell
source $DOTFILES/.macos

