#!/bin/bash
set -e
sudo apt install rbenv
rbenv install 2.7.5
bundle install;
bundle exec nanoc view & bundle exec guard;
