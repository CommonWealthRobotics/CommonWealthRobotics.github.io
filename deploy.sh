#!/bin/bash
git log -1
git config user.email "mad.hephaestus@gmail.com"
git config user.name "Kevin Harrington"
git config pull.rebase false
git config core.mergeoptions --no-edit
set -e 
mv docs/maven/ ./maven/
rm -rf docs

bash compile.sh

mv ./maven/ docs/

set +e

echo "commonwealthrobotics.com" >./docs/CNAME

git add --all .

git commit -a -m"Update for deploy"

git push --force