#!/bin/bash
set -e
sudo apt install rbenv
RUBY_CONFIGURE_OPTS="--with-openssl-dir=/usr/lib/ssl/" rbenv install 2.7.6
bundle install;
bundle exec nanoc view & bundle exec guard;
