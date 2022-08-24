#!/bin/bash

basedir=$(dirname "$(readlink -f "$0")")

apt-get update
apt-get install vim
cp $basedir/.vimrc ~/
