#!/bin/sh
echo "=======> deploy! ${TRAVIS_MODE}"
echo "$TRAVIS_COMMIT"
REAL_BRANCH=$(git ls-remote origin | sed -n "\|$TRAVIS_COMMIT\s\+refs/heads/|{s///p}")
echo "REAL_BRANCH $REAL_BRANCH"
if [ "$REAL_BRANCH" = "master" ]; then
  echo "master!!!!!!"
else
  echo "$REAL_BRANCH!!!!!!"
fi

echo "DONE!!!!!!"
