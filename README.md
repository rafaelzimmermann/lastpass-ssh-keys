# LastPass SSH Keys

Use LastPass CLI to add your private keys identities to your authentication agent,
and easily ssh into your machines without having to remember your passphrases.
If you store your private key on LastPass you don't even need to have it locally,
otherwise the script will search for the private key on `$HOME/.ssh` directory.


## Dependencies

* [LastPass CLI](https://github.com/lastpass/lastpass-cli)

## How to use
Add `lpass-ssh-keys` to your PATH.

```
$ lpass-ssh-keys --help

lpass-ssh-keys : It uses LastPass CLI to add your private keys identities to
    your authentication agent, and easily ssh into your machines without
    having to remember your passphrases.
Usage:
lpass-ssh-keys [arguments]

Arguments:
--help (-h): Display this help message
--username (-u): LastPass username
--lpgroup (-l): Name of the LastPass group where your SSH Keys are in

$ lpass-ssh-keys --username <LastPass username> --lpgroup <LastPass group>
```
