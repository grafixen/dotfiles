# Additional UNIX aliases can be found in ~/.oh-my-zsh/lib/*

# Misc
alias ipconfig='ifconfig'
alias t='tail'
alias tf='tail -f'
alias ports='lsof -i -n -P'
alias ':q'='exit'

# Flush your dns cache
alias flush='dscacheutil -flushcache'

# Clear Screen
alias clear="clear && printf '\e[3J'"
alias c='clear'
alias k='clear'
alias cls='clear'

# Print
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'

# Colorls
alias lr='colorls -r'
alias lf='lr -f'
alias la='lr -a'
alias ll='lr -lA --sd'

# File Listing
alias df='df -H'
alias du='du -ch'

# Port Listing
alias which.port='sudo lsof -i' # Usage: sudo lsof -i :{{port number}}

# File search functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
function mkcd() { mkdir -p "$@" && cd "$_"; }
