#!/bin/sh
echo $1
echo $2
echo $3
echo $TRAVIS_COMMIT
REAL_BRANCH=$(git ls-remote origin | sed -n "\|$TRAVIS_COMMIT\s\+refs/heads/|{s///p}")
IS_RELEASE=$(git ls-remote origin | grep "$TRAVIS_COMMIT\s\+refs/heads/release$")

echo "$IS_RELEASE"
echo "$REAL_BRANCH"
UPDATE_UI_CONF=true
if [ "$REAL_BRANCH" = "master" ]; then
  UPDATE_UI_CONF=true
else
  UPDATE_UI_CONF=false
fi

echo $UPDATE_UI_CONF
