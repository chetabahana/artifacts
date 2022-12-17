#!/usr/bin/env bash

echo -e "$hr\nDEPLOYMENT\n$hr"
# cloning default repository
apt-get install -qq git &>/dev/null
# https://stackoverflow.com/a/74439875/4058484
git config --global user.name "${ACTOR}"
git config --global user.email "${ACTOR}@users.noreply.github.com"
git config --global credential.helper store &>/dev/null
echo "https://{ACTOR}:${TOKEN}@github.com" > /root/.git-credentials

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

#cd ${WORKING_DIR}/build && touch .nojekyll

find_remote() {
  [[ "$sm_path" == */* ]] || git config remote.origin.url
}

export -f find_remote
# https://unix.stackexchange.com/a/196402/158462
REPOSITORY=$(git submodule foreach -q find_remote)
REPOSITORY=${REPOSITORY/"https://github.com/"/""}
echo -e "Deploying to ${REPOSITORY} on branch ${BRANCH}"
#git init && deploy_remote

exit $?
