#!/bin/sh -l

# Setup SSH
mkdir ~/.ssh
echo "$INPUT_SSH_PRIVATE_KEY" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

echo "Branches"
git branch -a
echo "Refs"
git show-ref
git remote add destination "$INPUT_TARGET_REPO_URL"
git push destination "$INPUT_SOURCE_BRANCH:$INPUT_TARGET_BRANCH" -f
