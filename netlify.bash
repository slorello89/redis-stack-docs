#!/bin/bash

git clone --recurse-submodules https://$PRIVATE_ACCESS_TOKEN@github.com/redis-stack/redis-stack-website
cd redis-stack-website
npm install autoprefixer
make netlify up