#!/bin/sh -l

# Setup SSH
mkdir -p /root/.ssh
echo "$INPUT_SSH_PRIVATE_KEY" > /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

git remote add destination "$INPUT_TARGET_REPO_URL"
git push destination "$GITHUB_REF:$GITHUB_REF" -f
