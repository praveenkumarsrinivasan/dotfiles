#!/usr/bin/env bash
DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"

cd "$DOTFILES_DIR/vim/.vim/"
ln -s bundle/vim-colorschemes/colors
cd "$DOTFILES_DIR"
