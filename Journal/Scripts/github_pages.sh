#!/usr/bin/env bash

echo -e "$hr\nDEPLOYMENT\n$hr"

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


if [[ "${OWNER}" == "eq19" ]]; then
  cd ${VENDOR_BUNDLE}/keras && touch .nojekyll && mv -f /maps/.gitattributes .
  export REPOSITORY=eq19/default && apt-get install git-lfs &>/dev/null
  git init && git lfs install && deploy_remote
fi


# https://unix.stackexchange.com/a/196402/158462
git submodule foreach -q "
  if [ \$sm_path != *\/*  ]; then 
    REPOSITORY=\$(git config remote.origin.url)
    REPOSITORY=\${REPOSITORY\/'https:\/\/github.com\/'\/''}
    echo Deploying to \${REPOSITORY} on branch \${BRANCH}'
    #cd ${WORKING_DIR}/build && rm -rf .git
    #git init && touch .nojekyll && deploy_remote
  fi
"

exit $?
