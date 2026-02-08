#!/usr/bin/env bash
# Install Vundle
DOTFILES_DIR=~/dotfiles/dotfiles_pks

cd "$DOTFILES_DIR/vim/.vim/"
mkdir -p autoload
cd autoload
git clone https://github.com/gmarik/Vundle.vim.git
cd "$DOTFILES_DIR"
