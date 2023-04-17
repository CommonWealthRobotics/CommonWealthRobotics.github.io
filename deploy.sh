#!/bin/bash

git fetch origin

git log -1
git config user.email "mad.hephaestus@gmail.com"
git config user.name "Kevin Harrington"
git config pull.rebase false
git config core.mergeoptions --no-edit

git checkout source   

git update-index --assume-unchanged ./.github/workflows/publish.yml
git merge origin/deploy --strategy-option ours --no-ff --no-edit --allow-unrelated-histories -m "Auto-merge from CI " 

git checkout deploy

git pull

git pull . source --allow-unrelated-histories

set -e 

bundle install

bundle exec rake site:deploy

git commit -a -m"Update for deploy"

set +e
git push --quiet ls\


git checkout source