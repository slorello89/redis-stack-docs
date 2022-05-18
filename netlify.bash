#!/bin/bash

git clone --recurse-submodules https://github.com/redis-stack/redis-stack-website
cd redis-stack-website
npm install autoprefixer
PRIVATE_ACCESS_TOKEN=$PRIVATE_ACCESS_TOKEN REDIS_STACK_DOCS_HASH=$REDIS_STACK_DOCS_HASH make netlify up