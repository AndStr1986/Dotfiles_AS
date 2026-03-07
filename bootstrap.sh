#!/usr/bin/env bash

echo "Installing Dotfiles...."

cd ~/Dotfiles_AS

# Install brew packages
brew bundle --file=Brewfile

# install configs
stow git
stow zsh
stow ssh
stow nvim
stow starship
stow aerospace

echo "Done."
