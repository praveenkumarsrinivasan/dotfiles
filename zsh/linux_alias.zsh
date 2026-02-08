# Linux-specific aliases

alias vi='vim'

# Navigation
alias dt='cd ~/dotfiles'
alias dl='cd ~/Downloads'
alias dk='cd ~/Desktop'
alias doc='cd ~/Documents'
alias sbx='cd ~/Documents/sandbox'

# Telegram notification for long-running commands
alias tg='telegram-send "$([ $? = 0 ] && echo "" || echo "error: ") $(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*tg$//'\'')"'
