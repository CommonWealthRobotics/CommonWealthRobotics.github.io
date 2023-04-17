#!/bin/bash
set -e
sudo apt install rbenv
rbenv install 2.7.6
bundle install;
bundle exec nanoc view & bundle exec guard;
