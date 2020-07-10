#!/bin/bash

while getopts b OPT
do
  case $OPT in
    b) BREW=1
      ;;
  esac
done

cp ./.zshrc ~
cp ./.zshenv ~
cp ./.gitconfig ~
cp ./.gitignore ~
cp -R ./.bundle ~

if [[ $BREW ]]; then
  brew bundle

  anyenv install --force-init
  anyenv install rbenv
fi

