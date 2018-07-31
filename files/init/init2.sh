#! /bin/bash
ssh-keygen -t rsa -N ""
cat /tmp/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
#restorecon -Rv ~/.ssh
