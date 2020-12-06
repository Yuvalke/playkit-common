#!/bin/bash
currentVersion=$(npx -c 'echo "$npm_package_version"')
repoName=$(npx -c 'echo "$npm_package_name"')
packageNameSuffix="${repoName##*-}"
echo "$TRAVIS_BRANCH"
echo "$currentVersion"
echo "$packageNameSuffix"
echo "$1"
echo "$2"
