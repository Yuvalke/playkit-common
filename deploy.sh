#!/bin/bash
currentVersion=$(npx -c 'echo "$npm_package_version"')
packageNameSuffix=${$(npx -c 'echo "$npm_package_name"')##*-}
echo "$currentVersion"
echo "$packageNameSuffix"
echo "$1"
echo "$2"
