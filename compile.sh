#!/bin/bash

set -e 

bundle install

bundle exec rake site:deploy