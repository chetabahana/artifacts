#!/usr/bin/env bash

if [[ "$sm_path" != */* ]]; then 
  REPOSITORY=$(git config remote.origin.url)
  REPOSITORY=${REPOSITORY/"https://github.com/"/""}

  cd ${WORKING_DIR}/build && rm -rf .git
  git init && touch .nojekyll && deploy_remote "${REPOSITORY}"
fi
