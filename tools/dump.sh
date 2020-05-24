#!/bin/bash

while getopts b OPT
do
  case $OPT in
    b) BREW=1
      ;;
  esac
done

cp ~/.zshrc .
cp ~/.gitconfig .

if [[ $BREW ]]; then
  rm ./Brewfile
  rm ./Brewfile.lock.json
  brew bundle dump
fi

