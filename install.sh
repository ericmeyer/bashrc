#! /bin/bash

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

if [[ -f $HOME/.hgrc ]]; then
  printf ".hgrc exists.  Overwrite? (Y/n): "
  choice
  case "$CHOICE" in
    [y] )
      echo "  linking .hgrc"
      rm $HOME/.hgrc
      ln -s $BASH_DIR/config_files/.hgrc $HOME/.hgrc;;
    [n] )
      echo "  Skipping .hgrc";;
  esac
else
  ln -s $BASH_DIR/config_files/.hgrc $HOME/.hgrc
fi

echo ''
echo '***************************************************'
echo 'Add the following to your bash config file:'
echo ''
echo ". $BASH_DIR/source_all"
echo '***************************************************'
