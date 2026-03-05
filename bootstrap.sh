#!/usr/bin/env bash

echo "Installing Dotfiles...."

ln -sf ~/Dotfiles_AS/zshrc ~/.zshrc
ln -sf ~/Dotfiles_AS/gitconfig ~/.gitconfig

mkdir -p ~/.ssh

echo "Done."
