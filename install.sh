#! /usr/bin/bash

. ./functions


BASH_DIR=`pwd`
if [[ -f $HOME/.gitconfig ]]; then
  printf ".gitconfig exists.  Overwrite? (Y/n): "
  choice
  case "$CHOICE" in
    [y] )
      echo "  linking .gitconfig"
      rm $HOME/.gitconfig
      ln -s $BASH_DIR/config_files/.gitconfig $HOME/.gitconfig;;
    [n] )
      echo "  Skipping .gitconfig";;
  esac
else
  ln -s $BASH_DIR/config_files/.gitconfig $HOME/.gitconfig
fi

echo ''
echo ''
echo '***************************************************'
echo 'Add the following to your bash config file:'
echo ''
echo ". $BASH_DIR/source_all"
echo '***************************************************'
