#!/bin/bash

git clone --recurse-submodules https://$PRIVATE_ACCESS_TOKEN@github.com/redis-stack/redis-stack-website
cd redis-stack-website
npm install autoprefixer

pip3 install -r requirements.txt

make netlify