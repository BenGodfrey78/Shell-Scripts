#!/bin/sh
if [ $(mount | grep 'sshfs  USER@DOMAINorIP:/' | wc -l) -ne 1 ]
then
    echo 'YOUR PASSWORD HERE' | sshfs USER@DOMAINorIP:/ /MOUNTPOINT -o password_stdin
    echo 'SSHFS has been mounted.'
else
    echo 'SSHFS is already mounted.'
fi
