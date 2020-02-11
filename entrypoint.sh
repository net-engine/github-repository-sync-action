#!/bin/sh -l

# Setup SSH
mkdir -p /root/.ssh
echo "$INPUT_SSH_PRIVATE_KEY" > /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

mkdir -p ~/.ssh
cp /root/.ssh/* ~/.ssh/ 2> /dev/null || true

echo "Branches"
git branch -a
echo "Refs"
git show-ref
ssh -vT git@github.com
git remote add destination "$INPUT_TARGET_REPO_URL"
git push destination "$GITHUB_REF:$INPUT_TARGET_BRANCH" -f
