#!/bin/bash

set -e 

rm -rf docs


bash compile.sh

set +e

echo "commonwealthrobotics.com" >./docs/CNAME