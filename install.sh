#!/usr/bin/env bash

set -e

BASH_CLONE_DIR="$HOME/.bash"
if [ -d $BASH_CLONE_DIR ]; then
  echo '====> Updating bash files'
  (cd $BASH_CLONE_DIR && git pull)
else
  echo '====> Cloning bash files'
  git clone https://github.com/ericmeyer/bashrc.git $BASH_CLONE_DIR
fi

VCPROMPT_DIR="$HOME/vcprompt"
if [ -d $VCPROMPT_DIR ]; then
  echo '====> vcprompt already installed'
else
  echo '====> Installing vcprompt'
  git clone https://github.com/ericmeyer/vcprompt "$HOME/vcprompt"
  ( cd "$HOME/vcprompt" && make && make install PREFIX=$HOME )
fi

SOURCE_LINE='source "$HOME/.bash/source_all"'
if grep -q "$SOURCE_LINE" "$HOME/.bash_profile"; then
  echo '====> Bash files already sourced'
else
  echo '====> Sourcing bash files'
  echo 'source "$HOME/.bash/source_all"' >> .bash_profile
fi


echo '====> Installation complete! Please create a new session to see the changes. ^_^'
