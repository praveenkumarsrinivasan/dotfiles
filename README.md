# dotfiles

## About

This is a repo of my dotfiles. These dotfiles capture some of my favorite configurations, mapping, and settings.
Big thanks to

- [baskerville](https://github.com/baskerville/)
- [derekwyatt](https://github.com/derekwyatt/)
- [mathiasbynens](https://github.com/mathiasbynens/)
- [mbadolato](https://github.com/mbadolato/)
- [mbrochh](https://github.com/mbrochh/)
- [paulirish](https://github.com/paulirish/)
- [robbyrussell](https://github.com/robbyrussell/)
- [seebi](https://github.com/seebi/)
- [simonowendesign|s10wen](https://github.com/s10wen/)
- [vimbits](http://www.vimbits.com/)
- [commandlineflu](http://www.commandlinefu.com/)
- [sjl](https://github.com/sjl/)
- [damianconway](https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup)
- [connermcd](https://github.com/connermcd)

## Configurations for
- Vim
- ZSH
- Git
- Common Scripts

## Prerequisites

- git
- zsh
- vim 8+
- wget (for spell setup)
- ctags (optional, for Tagbar plugin)

## Installation

Set `DOTFILES_DIR` to wherever you clone this repo:

```sh
export DOTFILES_DIR=~/dotfiles/dotfiles_pks
```

- **Step 1 : Clone the repo**

    ```sh
    git clone https://github.com/praveenkumarsrinivasan/dotfiles.git "$DOTFILES_DIR"
    cd "$DOTFILES_DIR"
    ```

- **Step 2 : Setup zsh and oh-my-zsh**

    The init script detects your platform (macOS/Linux) and symlinks the appropriate alias and environment files.

    ```sh
    sh bin/init_oh-my-zsh.sh
    ln -sf "$DOTFILES_DIR/zsh/.zshrc" ~/.zshrc
    ```

- **Step 3 : Setup vim and plugins**

    ```sh
    sh bin/init_vundle.sh
    sh bin/init_colors.sh
    sh bin/init_spell.sh
    ln -sf "$DOTFILES_DIR/vim/.vim" ~/.vim
    ln -sf "$DOTFILES_DIR/vim/.vimrc" ~/.vimrc
    vim +PluginInstall +qall
    ```

- **Step 4 : Setup git**

    ```sh
    ln -sf "$DOTFILES_DIR/git/.gitconfig" ~/.gitconfig
    ln -sf "$DOTFILES_DIR/git/.gitignore_global" ~/.gitignore_global
    ```

## Platform Notes

- **macOS**: Uses `custom_aliases.zsh` (includes `mvim`, `afk`, MySQL shortcuts) and `custom_env.zsh`
- **Linux**: Uses `custom_aliases_unix.zsh` (includes `telegram-send` integration) and `custom_env_unix.zsh`

The `bin/init_oh-my-zsh.sh` script handles this automatically based on `uname`.
