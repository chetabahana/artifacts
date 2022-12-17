#!/usr/bin/env bash

set -e

echo -e "$hr\nDEPLOYMENT\n$hr"
echo -e "Deploying to ${GITHUB_REPOSITORY} on branch ${BRANCH}"
echo -e "Deploying to https://github.com/${GITHUB_REPOSITORY}.git\n"

deploy_remote() {
  REMOTE_REPO="https://${ACTOR}:${TOKEN}@github.com/${REPOSITORY}.git"
  git remote add origin ${REMOTE_REPO} && git fetch &>/dev/null

  if [[ "${REPOSITORY}" != "${GITHUB_REPOSITORY}" ]]; then
    SHOW_ALL=`git show-branch --all | grep -w ${BRANCH}`
    [ $? == 0 ] && git push origin --delete ${BRANCH}
  fi

  git add . && git commit -m "jekyll build from Action ${GITHUB_SHA}"
  git push --force --quiet ${REMOTE_REPO} master:${BRANCH}
  rm -rf .git
}

find_remote() {
  [[ "$sm_path" == */* ]] || git config remote.origin.url
}

export -f find_remote

if [[ "${GITHUB_REPOSITORY_OWNER}" == "eq19" ]]; then
  cd ${VENDOR_BUNDLE}/keras && touch .nojekyll && mv -f /maps/.gitattributes .
  export REPOSITORY=eq19/default && apt-get install git-lfs &>/dev/null
  git init && git lfs install && deploy_remote
fi

cd ${WORKING_DIR}/build && touch .nojekyll
# https://unix.stackexchange.com/a/196402/158462
REPOSITORY=$(git submodule foreach -q bash -c 'find_remote')
REPOSITORY=${REPOSITORY/"https://github.com/"/""}
git init && deploy_remote

exit $?
