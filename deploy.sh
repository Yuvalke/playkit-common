#!/bin/sh
git_hash=$(git rev-parse --short "$GITHUB_SHA")
echo "$GITHUB_SHA"
echo "$git_hash"
REAL_BRANCH=$(git ls-remote origin | sed -n "\|$git_hash\s\+refs/heads/|{s///p}")
REAL_BRANCH1=$(git ls-remote origin | sed -n "\|$GITHUB_SHA\s\+refs/heads/|{s///p}")
echo "REAL_BRANCH $REAL_BRANCH"
echo "REAL_BRANCH1 $REAL_BRANCH1"
if [ "$REAL_BRANCH" = "master" ]; then
  echo "master!!!!!!"
else
  echo "$REAL_BRANCH!!!!!!"
fi

echo "DONE!!!!!!"
