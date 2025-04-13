#!/bin/bash

set -e 
mv docs/maven/ ./maven/
rm -rf docs

bash compile.sh

mv ./maven/ docs/

set +e

echo "commonwealthrobotics.com" >./docs/CNAME