<p align="center">
  <a href="https://github.com/net-engine/github-repository-sync-action"><img alt="GitHub action build status" src="https://github.com/net-engine/github-repository-sync-action/workflows/build-test/badge.svg"></a>
</p>

# Git Repository Sync Action

A [GitHub action](https://github.com/features/actions) to push changes to a branch in a current GitHub repository to any remote repository, i.e. another GitHub, GitLab, AWS CodeCommit repository.

Check out a [sample workflow](https://github.com/net-engine/github-repository-sync-action/blob/master/.github/workflows/test.yml).

Inspired by the following actions

* [wei/git-sync](https://github.com/wei/git-sync)
* [pixta-dev/repository-mirroring-action](https://github.com/pixta-dev/repository-mirroring-action)

## Inputs

### `ssh_private_key`

**Required** The SSH private key for SSH connection to the target repository. We strongly recommend saving this value within [GitHub secrets](https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets).

### `target_repo_url`

**Required** The SSH-based URL to the target repository, e.g. `git@github.com:net-engine/github-repository-sync-action.git`

## Example usage

uses: netengine/github-repository-sync-action
with:
  who-to-greet: 'Mona the Octocat'

## TODO

* Support for any to and from branch, similar to [actions/checkout@v2](https://github.com/actions/checkout)
* Make SSH key-based authentication optional to support username/password authentication
