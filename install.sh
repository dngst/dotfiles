#!/bin/bash

# Install apt-fast
sudo add-apt-repository ppa:apt-fast/stable
sudo apt-get update
sudo apt-get -y install apt-fast

# Install Git
sudo apt-fast install git-all

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
echo "export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"" > ~/.bashrc
source ~/.bashrc

# Install Redis
sudo snap install redis

# Install ruby-build
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

# Install rbenv
sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
gem install bundler
gem install rails

# Install Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
echo "export PATH="$PATH:/opt/nvim-linux64/bin"" > ~/.bashrc

# Install PostgreSQL
sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-fast -y install postgresql postgresql-contrib libpq-dev

sudo apt-fast install ubuntu-restricted-extras -y
sudo apt-fast install tlp -y

# Install Node.js
nvm install --lts

# Install AstroNvim
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# Update and clean
sudo apt-fast update && sudo apt-fast upgrade -y
sudo apt autoclean && sudo apt autoremove -y

# sudo -u postgres createuser $USER
# sudo -u postgres createdb $USER

