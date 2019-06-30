#!/bin/bash

sudo apt-get install ruby2.5-dev  bundler;
bundle install;
bundle exec nanoc view & bundle exec guard;
