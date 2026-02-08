#!/usr/bin/env bash
DOTFILES_DIR=~/dotfiles/dotfiles_pks

cd "$DOTFILES_DIR/vim/.vim/"
ln -s bundle/vim-colorschemes/colors
cd "$DOTFILES_DIR"
