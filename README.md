# Setting The SSH Key Git Uses

This script adds awareness to Git about which SSH key should be used when pushing to remotes over SSH.

## Use

1. Run the `setup-alias.sh`
2. Open the config of repository you want to set the key path of: `repoName/.git/config`
3. Add the following to it, replacing `$HOME/.ssh/key-name` with your key path
```bash
[SSH]
    keypath = $HOME/.ssh/key-name
```
4. Push and pull as normal but using your new key

## How It Works

All that happens is the alias looks for the config variable `SSH.keypath` and if found exports the value of the config
entry to an environment variable named `GIT_SSH_COMMAND`. Git uses this when it does anything SSH related and will make
use of the key you configured.

## Requirements

Git v2.3 or above
