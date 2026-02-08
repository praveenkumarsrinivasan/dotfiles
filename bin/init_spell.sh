#!/usr/bin/env bash
DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"

cd "$DOTFILES_DIR/vim/.vim/"
mkdir -p spell
cd spell
wget https://raw.githubusercontent.com/derekwyatt/vim-config/master/spell/en.utf-8.add
wget https://raw.githubusercontent.com/derekwyatt/vim-config/master/spell/en.utf-8.add.spl
cd "$DOTFILES_DIR"
