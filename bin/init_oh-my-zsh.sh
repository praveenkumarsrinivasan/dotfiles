#!/usr/bin/env bash
DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"

cd "$DOTFILES_DIR/zsh/"
git clone git://github.com/robbyrussell/oh-my-zsh.git
mv oh-my-zsh/ .oh-my-zsh/
cd "$DOTFILES_DIR/zsh/.oh-my-zsh/custom/"

# Symlink platform-specific aliases and environment files
if [[ "$(uname)" == "Darwin" ]]; then
    ln -sf ../../custom_aliases.zsh
    ln -sf ../../custom_env.zsh
else
    ln -sf ../../custom_aliases_unix.zsh custom_aliases.zsh
    ln -sf ../../custom_env_unix.zsh custom_env.zsh
fi

ln -sf ../../custom_keybindings.zsh

cd "$DOTFILES_DIR"
