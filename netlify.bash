#!/bin/bash
rm -rf redis-stack-website
git clone --recurse-submodules https://$PRIVATE_ACCESS_TOKEN@github.com/slorello89/redis-stack-website
cd redis-stack-website
npm install autoprefixer
echo $COMMIT_REF
echo $REPOSITORY_URL
REDIS_BLOOM_REMOTE=https://github.com/RedisBloom/RedisBloom REDIS_BLOOM_SHA=45624754ef87d48428c31a26195da10de3 REDIS_STACK_DOCS_SHA=$COMMIT_REF REDIS_STACK_DOCS_REMOTE=$REPOSITORY_URL make netlify