#!/usr/bin/env bash
DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"

cd "$DOTFILES_DIR/vim/.vim/"
sed '/bundle/d' .gitignore >> a.out
mv a.out .gitignore
mkdir bundle
cd "$DOTFILES_DIR"
sh bin/get_bundles.sh
cd "$DOTFILES_DIR/vim/.vim/"
echo bundle >> .gitignore
cd "$DOTFILES_DIR"
