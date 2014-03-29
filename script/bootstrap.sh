#!/usr/bin/env bash

# Update package manager
sudo apt-get -y update

# Install curl
sudo apt-get -y install curl

# Install git
sudo apt-get -y install git

# Install nvm
curl https://raw.github.com/creationix/nvm/v0.3.0/install.sh | sh

# Source bash_profile for nvm
source ~/.bash_profile
source ~/.profile

# Install node 0.10
nvm install 0.10

# Set it to default
nvm alias default 0.10


# Install rvm and stable version of ruby
curl -sSL https://get.rvm.io | bash -s stable --ruby

# add rvm to PATH
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >> ~/.profile

# Source profiel
source ~/.profile

# Globally install Node.js utility binaries
npm install -g bower phantomjs

# Install required gem
gem install bundler

# Install ImageMagick
sudo apt-get -y install libmagickwand-dev imagemagick

# Install local Postgres & Redis servers
sudo apt-get -y install redis-server postgresql

# Other dependencies
sudo apt-get -y install libxslt-dev libxml2-dev libcurl4-openssl-dev libpq-dev

# install JRE
sudo apt-get -y install openjdk-7-jre

# Setup postgres default user for with password postgres
sudo -u postgres psql -U postgres -d postgres -c "alter user postgres with password 'postgres';"
