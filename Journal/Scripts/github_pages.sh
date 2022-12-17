#!/usr/bin/env bash

if [[ "$sm_path" != */* ]]; then 
  REPOSITORY=$(git config remote.origin.url)
  export REPOSITORY=${REPOSITORY/"https://github.com/"/""}
  echo -e "Deploying to ${REPOSITORY} on branch ${BRANCH}"
  cd ${WORKING_DIR}/build && rm -rf .git
  git init && touch .nojekyll && deploy_remote
fi
