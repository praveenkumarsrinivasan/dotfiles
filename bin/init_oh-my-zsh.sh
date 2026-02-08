#!/usr/bin/env bash
DOTFILES_DIR=~/dotfiles/dotfiles_pks

cd "$DOTFILES_DIR/zsh/"
git clone https://github.com/robbyrussell/oh-my-zsh.git
mv oh-my-zsh/ .oh-my-zsh/
cd "$DOTFILES_DIR/zsh/.oh-my-zsh/custom/"

# Symlink shared (platform-independent) files
for f in custom_env.zsh custom_keybindings.zsh docker_alias.zsh git_alias.zsh kubernetes.zsh util_alias.zsh; do
    ln -sf "../../$f"
done

# Symlink platform-specific aliases and environment files
if [[ "$(uname)" == "Darwin" ]]; then
    ln -sf ../../mac_alias.zsh
else
    ln -sf ../../linux_alias.zsh
fi

cd "$DOTFILES_DIR"
