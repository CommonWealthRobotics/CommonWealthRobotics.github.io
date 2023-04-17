#!/bin/bash

set -e 

rm -rf docs

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

git pull --allow-unrelated-histories

git merge source --strategy-option ours --no-ff --no-edit --allow-unrelated-histories -m "Auto-merge from CI " 

git pull . source --allow-unrelated-histories


bash compile.sh

set +e

echo "commonwealthrobotics.com" >./docs/CNAME

git add --all .

git commit -a -m"Update for deploy"

git push --force

git checkout source