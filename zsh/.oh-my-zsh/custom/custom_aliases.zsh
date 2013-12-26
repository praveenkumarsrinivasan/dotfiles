alias gs='git status'
alias ga='git add .'
alias g="git"

alias gl='git ls-tree --full-tree -r HEAD'
alias gr='git rm `$(git ls-files --deleted)`'

alias v='vim '
alias p='pwd'
alias t='find . -print | sed -e "s;[^/]*/;|____;g;s;____|; |;g"'

alias s='du -sch'
alias dt='cd ~/dotfiles'
alias dl="cd ~/Downloads"
alias dk="cd ~/Desktop"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

