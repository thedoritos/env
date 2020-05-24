#!/bin/bash

cp ~/.zshrc .
cp ~/.gitconfig .

rm ./Brewfile
rm ./Brewfile.lock.json
brew bundle dump
