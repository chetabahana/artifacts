#!/usr/bin/env bash

deploy_remote() {
  echo -e "Deploying to $1 on branch ${BRANCH}"
  REMOTE_REPO="https://${ACTOR}:${TOKEN}@github.com/$1.git"
  git remote add origin ${REMOTE_REPO} && git fetch &>/dev/null

  if [[ "$1" != "${GITHUB_REPOSITORY}" ]]; then
    SHOW_ALL=`git show-branch --all | grep -w ${BRANCH}`
    [ $? == 0 ] && git push origin --delete ${BRANCH}
  fi

  git add . && git commit -m "jekyll build from Action ${GITHUB_SHA}"
  git push --force --quiet ${REMOTE_REPO} master:${BRANCH}
}
