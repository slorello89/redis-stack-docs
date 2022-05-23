#!/bin/bash
rm -rf redis-stack-website
git clone --recurse-submodules https://$PRIVATE_ACCESS_TOKEN@github.com/slorello89/redis-stack-website
cd redis-stack-website
npm install autoprefixer
echo $COMMIT_REF
echo $REPOSITORY_URL
REDIS_STACK_DOCS_SHA=$COMMIT_REF REDIS_STACK_DOCS_REMOTE=$REPOSITORY_URL make netlify