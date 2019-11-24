#!/usr/bin/env bash

# set NPM_REGISTRY, NPM_USER, NPM_PASS and NPM_USER_EMAIL env variables when running the container for automatic login

if [ ! -f ~/.netrc ] && [ -n "$NPM_USER" ] && [ -n "$NPM_REGISTRY" ]; then
  echo "machine $NPM_REGISTRY" > ~/.netrc
  echo "login $NPM_USER" >> ~/.netrc
  echo "password $NPM_PASS" >> ~/.netrc
fi

if [ -n "$NPM_REGISTRY" ]; then
  npm set registry $NPM_REGISTRY
fi

if [ -n "$NPM_USER" ]; then
  echo "$NPM_USER_EMAIL" >> ~/.npmrc
  echo "always-auth=true" >> ~/.npmrc
  echo "_auth="$(echo -n ${NPM_USER}:${NPM_PASS} | base64) >> ~/.npmrc
fi;

exec "$@"