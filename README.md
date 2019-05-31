# LastPass SSH Keys

Use LastPass CLI to add your private keys identities to your authentication agent,
and easily ssh into your machines without having to remember your passphrases.
If you store your private key on LastPass you don't even need to have it locally,
otherwise the script will search for the private key on `$HOME/.ssh` directory.


## Dependencies

* [LastPass CLI](https://github.com/lastpass/lastpass-cli)

## How to use

Clone the project, and create a `.config` file based on `.config.template`.

```
lastpass_username: Your LastPass user name
lastpass_sshgroup: The name of the LastPass group where your SSH Keys are in.
```
After you create the configuration file, you just need to run the `lpass-ssh-keys`.

```
$ ./lpass-ssh-keys
```
