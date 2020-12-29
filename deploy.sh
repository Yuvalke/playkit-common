#!/bin/sh
echo $1
echo $2
echo $3
REAL_BRANCH=$(git ls-remote origin | sed -n "\|$TRAVIS_COMMIT\s\+refs/heads/|{s///p}")
echo $REAL_BRANCH
