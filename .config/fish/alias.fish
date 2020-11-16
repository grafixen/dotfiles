# Vim Style
alias :q exit
alias :f ranger

# Quick Edits
alias ee 'cd ~/.config/fish && vi .'
alias ea 'cd ~/.config/fish/conf.d && vim ~/.config/fish/conf.d/alias.fish'
alias ef 'cd ~/.config/fish && vim ~/.config/fish/config.fish'
alias rf 'source ~/.config/fish/config.fish'

alias :vi 'vim ~/.config/nvim/init.vim'
alias :vp 'vim ~/.config/nvim/plug-manager.vim'

# Clear Screen
alias clear "clear && printf '\e[3J'"
alias c 'clear'

alias df 'df -m'
alias du 'du -sh'
alias su 'su -m'

alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'

# Colorls
alias lr 'colorls -r'
alias la 'lr -a'
alias ll 'lr -lA --sd'
alias lt 'lr -d --tree=2' # Show 2 Level Tree
alias lg 'll --gs --tree=2' # Show with Git Status

# Dotfiles
alias :df='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# DS_Store
alias ds.clear 'find . -name '.DS_Store' -type f -delete'

# AdBlock hosts
alias adaway 'cd $HOME/Utils/hosts && python3 updateHostsFile.py'

# Mongo
alias mongod "mongod --dbpath $MONGO_DATADIR -f /etc/mongod.conf" # Usage Note: ulimit -n 2048 && mongod
alias mongo "mongo -u \"superman\" --authenticationDatabase \"admin\" -p dfe44a6e"

# MySQL
alias mysqld5 'asdf global mysql $MYSQL5; and mysqld_safe --datadir=$MYSQL5_DATADIR'
alias mysqld8 'asdf global mysql $MYSQL8; and mysqld_safe --datadir=$MYSQL8_DATADIR'
alias mysql.shutdown 'asdf current mysql; and mysqladmin -u root -p shutdown'

# Redis
alias redis-server "redis-server /usr/local/etc/redis.conf"

# Sublime
alias sublime 'open /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# TMUX
alias tc "vi ~/.tmux.conf"
alias ta "tmux attach -t"
alias td "tmux attach -d -t"
alias ts "tmux new-session -s"
alias tl "tmux list-sessions"
alias tksv "tmux kill-server"
alias tkss "tmux kill-session -t"

# VIM
alias vim nvim
alias vi vim

# Version Managers
alias vm load_vmanagers

# XMRIG
alias xmrig.start.slow 'cd /Users/insirql/Applications/xmrig/build && ./xmrig -o pool.supportxmr.com:3333 -u 49VgU6B3TFrX63UeMCc71ZVPyoYqSniAuh4jPU2fyqs7Edb1L5rcy1H1i6NAiGcck66KTz4wKzyaDP6Mq7eB3GCz49kxfEr -p x -k'
alias xmrig.start.fast 'cd /Users/insirql/Applications/xmrig/build && ./xmrig -o pool.supportxmr.com:5555 -u 49VgU6B3TFrX63UeMCc71ZVPyoYqSniAuh4jPU2fyqs7Edb1L5rcy1H1i6NAiGcck66KTz4wKzyaDP6Mq7eB3GCz49kxfEr -p x -k'

