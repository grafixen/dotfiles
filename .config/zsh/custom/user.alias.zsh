# Files
alias -s ts=code
alias -s js=code
alias -s css=code
alias -s html=code

# Change Directory
alias ..="cd .."

# Recursively clean .DS_Store in a given folder
alias ds.clear="find . -name '.DS_Store' -type f -delete"

# ZSH
alias :r="source ~/.zshrc"
alias :z="vi ~/.zshrc"
alias :ze="cd ~/.zsh/custom/ && vi ."

# File Manager
alias :f=ranger
alias :q=exit

# Dotfiles Config
alias :df="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

# Clear Screen
alias clear="clear && printf '\e[3J'"
alias c="clear"

# Colorls
alias lr="colorls -r"
alias la="lr -a"
alias ll="lr -lA --sd"
alias lt="ll --tree=2" # Show 2 Level Tree
alias lg="ll --gs --tree=2" # Show with Git Status

# File Listing
alias df="df -H"
alias du="du -ch"

### Applications
### CTags
alias ctags="`brew --prefix`/bin/ctags"

### Mongo
alias mongod="ulimit -n 2048 && mongod --dbpath $MONGO_DATADIR --config /etc/mongod.conf"
alias mongo="mongo -u \"superman\" --authenticationDatabase \"admin\" -p dfe44a6e"

# Medis
alias medis="cd $HOME/Utils/medis && npm start"

# Mongo Data Gen
alias mgodatagen="cd $HOME/Utils/mgodatagen && ./mgodatagen"

### MySQL
alias mysqld5="asdf global mysql $MYSQL5 && mysqld_safe --datadir=$MYSQL5_DATADIR"
alias mysqld8="asdf global mysql $MYSQL8 && mysqld_safe --datadir=$MYSQL8_DATADIR"
alias mysql.shutdown="asdf current mysql && mysqladmin -u root -p shutdown"

### NPM
alias npm.list="npm list -g --depth=0"

### Python Upgrade
alias :pu="pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"

### Redis
alias redis-server="redis-server /usr/local/etc/redis.conf"

### Redsmin
alias redsmin.start="open -a 'Google Chrome' https://app.redsmin.com && REDSMIN_KEY=5a668f6bcbcc9d950696aacb redsmin"

### Sublime
alias sublime="open /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

### TMUX
alias tc="vi ~/.tmux.conf"
alias ta="tmux attach -t"
alias td="tmux attach -d -t"
alias ts="tmux new-session -s"
alias tl="tmux list-sessions"
alias tksv="tmux kill-server"
alias tkss="tmux kill-session -t"

### Vim
alias vim="nvim"
alias vi="vim"
alias :vi="vi ~/.config/nvim/init.vim"
alias :vp="vi ~/.config/nvim/plug-manager.vim"

# XMRIG
alias xmrig.start.slow="cd /Users/insirql/Applications/xmrig/build && ./xmrig -o pool.supportxmr.com:3333 -u 49VgU6B3TFrX63UeMCc71ZVPyoYqSniAuh4jPU2fyqs7Edb1L5rcy1H1i6NAiGcck66KTz4wKzyaDP6Mq7eB3GCz49kxfEr -p x -k"
alias xmrig.start.fast="cd /Users/insirql/Applications/xmrig/build && ./xmrig -o pool.supportxmr.com:5555 -u 49VgU6B3TFrX63UeMCc71ZVPyoYqSniAuh4jPU2fyqs7Edb1L5rcy1H1i6NAiGcck66KTz4wKzyaDP6Mq7eB3GCz49kxfEr -p x -k"
