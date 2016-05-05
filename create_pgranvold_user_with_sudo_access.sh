#!/usr/bin/env bash

MY_SHELL=$( which bash )

/usr/sbin/useradd -c 'Patrick Granvold <pgranvold at westcoastinformatics.com>' -s ${MY_SHELL} -m pgranvold
cat >/etc/sudoers.d/pgranvold-ALL <<EOF
pgranvold     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/pgranvold-ALL
mkdir ~pgranvold/.ssh
chmod 700 ~pgranvold/.ssh
curl https://raw.githubusercontent.com/granvold/ssh_access/master/pgranvold_rsa.pub >~pgranvold/.ssh/authorized_keys
chmod 400 ~pgranvold/.ssh/authorized_keys
chown -R pgranvold ~pgranvold/.ssh
