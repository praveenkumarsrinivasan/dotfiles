#!/usr/bin/env bash
# Install Pathogen (legacy -- .vimrc now uses Vundle)
DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"

cd "$DOTFILES_DIR/vim/.vim/"
mkdir -p autoload
curl -LSso autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd "$DOTFILES_DIR"
