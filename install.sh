#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing dotfiles from $DOTFILES_DIR"

# --- Zsh ---
echo "Setting up zsh and oh-my-zsh..."
bash "$DOTFILES_DIR/bin/init_oh-my-zsh.sh"
ln -sf "$DOTFILES_DIR/zsh/.zshrc" ~/.zshrc
echo "  Linked ~/.zshrc"

# --- Vim ---
echo "Setting up vim..."
bash "$DOTFILES_DIR/bin/init_vundle.sh"
bash "$DOTFILES_DIR/bin/init_colors.sh"
bash "$DOTFILES_DIR/bin/init_spell.sh"
ln -sf "$DOTFILES_DIR/vim/.vim" ~/.vim
ln -sf "$DOTFILES_DIR/vim/.vimrc" ~/.vimrc
echo "  Linked ~/.vim and ~/.vimrc"
echo "  Installing Vundle plugins..."
vim +PluginInstall +qall

# --- Git ---
echo "Setting up git..."
ln -sf "$DOTFILES_DIR/git/.gitconfig" ~/.gitconfig
ln -sf "$DOTFILES_DIR/git/.gitignore_global" ~/.gitignore_global
echo "  Linked ~/.gitconfig and ~/.gitignore_global"

echo "Done! Restart your shell or run: source ~/.zshrc"
