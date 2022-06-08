#!/bin/sh

cd dipencode
npm ci 
echo "init-author-name=Dipen" >> .npmrc
echo "init-author-email=dipenvshah@gmail.com" >> .npmrc
echo "//registry.npmjs.org/:_authToken=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" >> .npmrc
echo "init-license=MIT" >> .npmrc
npm run semantic-release -- --no-ci