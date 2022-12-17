#!/usr/bin/env bash

if [[ "$sm_path" != */* ]]; then 
  cd ${WORKING_DIR}/build
  REPOSITORY=$(git config remote.origin.url)
  REPOSITORY=${REPOSITORY/"https://github.com/"/""}
  echo -e "Deploying to ${REPOSITORY} on branch ${BRANCH}"
  rm -rf .git && git init && touch .nojekyll && deploy_remote "${REPOSITORY}"
fi
