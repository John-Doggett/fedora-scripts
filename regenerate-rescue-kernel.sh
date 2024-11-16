#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]
  then echo "You must run as root"
  exit 1
fi

rm -v /boot/*rescue*
kernel-install -v add "$(uname -r)" "/lib/modules/$(uname -r)/vmlinuz"

echo "Regenerated Rescue Kernel"
exit 0
