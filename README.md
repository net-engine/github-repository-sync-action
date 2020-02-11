<p align="center">
  <a href="https://github.com/net-engine/github-repository-sync-action"><img alt="GitHub action build status" src="https://github.com/net-engine/github-repository-sync-action/workflows/test/badge.svg"></a>
</p>

# Git Repository Sync Action

This action pushes all commits in the branch that this action is run on into any remote git repository.

Check out a [sample workflow](https://github.com/net-engine/github-repository-sync-action/blob/master/.github/workflows/test.yml).

## Usage

Be sure to run the [`actions/checkout`](https://github.com/actions/checkout) action in a step before
this action so that the git repository is initialized.

```yaml
# File: .github/workflows/mirror.yml
- uses: netengine/github-repository-sync-action@v1
  with:
    # The SSH private key for SSH connection to the target repository.
    # We strongly recommend saving this value as a GitHub Secret and using deploy
    # keys within the target repository
    ssh_private_key: ${{ secrets.SSH_PRIVATE_KEY }}
    # The SSH-based URL to the target repository
    target_repo_url: git@github.com:net-engine/github-repository-sync-action-test.git
```

## Notes

Inspired by the following actions which may be more suitable for your workflow, e.g. syncing any
source repository and branch to any destination, or copying all branches.

* [wei/git-sync](https://github.com/wei/git-sync)
* [pixta-dev/repository-mirroring-action](https://github.com/pixta-dev/repository-mirroring-action)

## TODO

* Support for any to and from branch, similar to [actions/checkout@v2](https://github.com/actions/checkout)
* Make SSH key-based authentication optional to support username/password authentication

# License

The scripts and documentation in this project are released under the [MIT License](LICENSE)
