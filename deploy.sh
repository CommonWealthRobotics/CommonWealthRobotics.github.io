#!/bin/bash

git fetch origin

git checkout source 
git log -1
git config user.email "mad.hephaestus@gmail.com"
git config user.name "Kevin Harrington"
git config pull.rebase false
git config core.mergeoptions --no-edit

git checkout deploy 
git log -1
git checkout source   

git update-index --assume-unchanged ./.github/workflows/publish.yml
git merge origin/deploy --strategy-option ours --no-ff --no-edit --allow-unrelated-histories -m "Auto-merge from CI " 

git checkout deploy

git pull

git pull origin source --allow-unrelated-histories

bundle install

bundle exec rake site:deploy

git push --quiet 