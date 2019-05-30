#!/usr/bin/env bash

lpass login

private_keys=$(find $HOME/.ssh/* -not -name "*.pub" -not -name "known_hosts")

if ! ps -p $SSH_AGENT_PID > /dev/null; then
    eval `ssh-agent -s`
fi

for file_path in $private_keys; do
    file_name=$(basename $file_path)
    pass=$(lpass show  --field=Passphrase $file_name)
    SSH_ASKPASS_FOR=$file_name DISPLAY=":0.0" SSH_ASKPASS="$PWD/ssh_askpass.sh" setsid ssh-add $file_path < /dev/null
done
