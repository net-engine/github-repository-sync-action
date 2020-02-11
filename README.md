<p align="center">
  <a href="https://github.com/net-engine/github-action-repository-sync"><img alt="GitHub action build status" src="https://github.com/net-engine/github-action-repository-sync/workflows/build-test/badge.svg"></a>
</p>

# Git Repository Sync Action

A [GitHub action](https://github.com/features/actions) to push changes to a branch in a current GitHub repository to any remote repository, i.e. another GitHub, GitLab, AWS CodeCommit repository.

Inspired by the following actions

* [wei/git-sync](https://github.com/wei/git-sync)
* [pixta-dev/repository-mirroring-action](https://github.com/pixta-dev/repository-mirroring-action)

## Inputs

### `who-to-greet`

**Required** The name of the person to greet. Default `"World"`.

## Example usage

uses: actions/hello-world-docker-action@v1
with:
  who-to-greet: 'Mona the Octocat'

## TODO

* Support for any branch, similar to [actions/checkout@v2](https://github.com/actions/checkout)
