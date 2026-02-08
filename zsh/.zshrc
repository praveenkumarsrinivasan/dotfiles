# Path to your oh-my-zsh configuration.
# Set DOTFILES_DIR in your environment or update this path for your machine.
DOTFILES_DIR=~/dotfiles/dotfiles_pks

ZSH="$DOTFILES_DIR/zsh/.oh-my-zsh"

ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='vim'
