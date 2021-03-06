#!/bin/bash
echo "Instsalling RBENV"
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile

echo "Reloading PATH"
source ~/.bash_profile

echo "Installing Ruby 2.0.0"
CONFIGURE_OPTS="--with-readline-dir=/usr/include/readline" rbenv install 2.0.0-p353
rbenv global 2.0.0-p353
rbenv rehash
