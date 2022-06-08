#!/bin/sh

cd dipencode
npm install 
echo "init-author-name=Dipen" >> .npmrc
echo "init-author-email=dipenvshah@gmail.com" >> .npmrc
echo "//registry.npmjs.org/:_authToken=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" >> .npmrc
echo "init-license=MIT" >> .npmrc
npm run semantic-release -- --no-ci