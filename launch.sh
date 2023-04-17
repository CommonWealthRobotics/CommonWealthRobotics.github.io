#!/bin/bash
set -e
sudo apt install gnupg2
gpg2 --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
~/.rvm/bin/rvm pkg install openssl
~/.rvm/bin/rvm install 2.7.6 --with-openssl-dir=$HOME/.rvm/usr
bundle install;
bundle exec nanoc view & bundle exec guard;
