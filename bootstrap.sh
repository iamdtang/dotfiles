#!/usr/bin/env bash
echo "Current npm prefix"
npm config get prefix
npm config set prefix ~/npm
echo "Changed npm prefix to ~/npm"

echo "Copying .bash_profile to home directory"
cp .bash_profile ~/.bash_profile

source ~/.bash_profile;
echo "COMPLETED"
