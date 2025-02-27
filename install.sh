#!/usr/bin/env bash

set -e
source ./env.sh

echo "this will run npm install in all relevant sub-folders, build the project, and install the CDK toolkit"

cd lambda
cd api
npm install
cd ..
cd pretokengeneration
npm install
cd ../..
cd cdk
npm install
cd ..
cd ui-react
npm install
cd ..
cd ui-angular
npm install
cd ..

./build.sh

cd cdk
npm run cdk -- bootstrap
cd ..
