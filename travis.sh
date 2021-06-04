#!/bin/bash
if [[ "$TRAVIS_BRANCH" = "master" ]] && [[ "$TRAVIS_EVENT_TYPE" != "pull_request" ]] && [[ ! "$TRAVIS_COMMIT_MESSAGE" =~ ^(chore).*(update dist)$ ]] && [[ ! "$TRAVIS_COMMIT_MESSAGE" =~ ^chore\(release\) ]]; then
  echo "entered!!!!!"
fi

echo "========> ${TRAVIS_MODE} !!!!"
echo "========> ${yuval} !!!!"
