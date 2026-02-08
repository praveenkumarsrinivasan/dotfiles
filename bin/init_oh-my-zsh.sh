#!/usr/bin/env bash
DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"

cd "$DOTFILES_DIR/zsh/"
git clone git://github.com/robbyrussell/oh-my-zsh.git
mv oh-my-zsh/ .oh-my-zsh/
cd "$DOTFILES_DIR/zsh/.oh-my-zsh/custom/"

# Symlink shared (platform-independent) files
for f in git_alias.zsh util_alias.zsh hadoop_alias.zsh docker_alias.zsh kubernetes.zsh custom_keybindings.zsh; do
    ln -sf "../../$f"
done

# Symlink platform-specific aliases and environment files
if [[ "$(uname)" == "Darwin" ]]; then
    ln -sf ../../mac_alias.zsh
    ln -sf ../../custom_env.zsh
else
    ln -sf ../../linux_alias.zsh
    ln -sf ../../custom_env_unix.zsh custom_env.zsh
fi

cd "$DOTFILES_DIR"
