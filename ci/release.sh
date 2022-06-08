#!/bin/sh
apk update && apk add git openssh

mkdir -p ~/.ssh
ssh-keyscan -t rsa -H github.com >> ~/.ssh/known_hosts

cd dipencode
npm ci
echo "init-author-name=Dipen" >> .npmrc
echo "init-author-email=dipenvshah@gmail.com" >> .npmrc
echo "//registry.npmjs.org/:_authToken=${NPM_TOKEN}" >> .npmrc
echo "init-license=MIT" >> .npmrc
npm run semantic-release -- --no-ci