# Linux-specific aliases. Symlink this instead of custom_aliases.zsh on Linux systems.

# GIT
alias g="git"
alias gs='git status'
alias ga='git add .'

alias gp='git push'
alias gl='git log'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gh='git hist'

alias glt='git ls-tree --full-tree -r HEAD'
alias gr='git rm `$(git ls-files --deleted)`'

alias vi='vim'
alias p='pwd'
alias dh='dirs -v'
alias s='du -sch'

alias dt='cd ~/dotfiles'
alias dl="cd ~/Downloads"
alias dk="cd ~/Desktop"
alias doc='cd ~/Documents'
alias sbx='cd ~/Documents/sandbox'

alias tg='telegram-send "$([ $? = 0 ] && echo "" || echo "error: ") $(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*tg$//'\'')"'


# Utils
# Find
alias t='find . -print | sed -e "s;[^/]*/;|____;g;s;____|; |;g"'
# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"


# Hadoop
alias hls='hadoop fs -ls '
alias hrm='hadoop fs -rm '
alias hrmr='hadoop fs -rm -r '
alias hcat='hadoop fs -cat '

