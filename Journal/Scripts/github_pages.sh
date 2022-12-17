#!/usr/bin/env bash

if [[ "$sm_path" != */* ]]; then 
  REPOSITORY=$(git config remote.origin.url)
  export REPOSITORY=${REPOSITORY/"https://github.com/"/""}
fi
