# LastPass SSH Keys

Load your SSH private key stored on LastPass into your authentication agent.

## Dependencies

* [LastPass CLI](https://github.com/lastpass/lastpass-cli)

## How to use

Clone the project, and create a `.config` file based on `.config.template`.

```
lastpass_username: Your LastPass user name
lastpass_sshgroup: The name of the LastPass group where your SSH Keys are in.
```
After you create the configuration file, you just need to run the `ssh-agent-feeder.sh`.

```
$ ./lpass-ssh-keys
```
