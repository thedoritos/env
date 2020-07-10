#!/bin/bash

while getopts b OPT
do
  case $OPT in
    b) BREW=1
      ;;
  esac
done

cp ~/.zshrc .
cp ~/.zshenv .
cp ~/.gitconfig .
cp ~/.gitignore .

mkdir -p ./.bundle
cp ~/.bundle/config ./.bundle

if [[ $BREW ]]; then
  rm ./Brewfile
  rm ./Brewfile.lock.json
  brew bundle dump
fi

