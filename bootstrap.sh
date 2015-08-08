#!/usr/bin/env bash
current_npm_prefix = npm config get prefix
echo "Changing npm prefix to $current_npm_prefix"
npm config set prefix ~/npm

source ~/.bash_profile;
