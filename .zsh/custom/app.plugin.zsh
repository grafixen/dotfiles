### CURL
function download(){
  curl -O "$1"
}

# Because Typing python -m SimpleHTTPServer is too Damn Long
# Start an HTTP server from a directory, optionally specifying the port
function server() {
  local port="${1:-8000}"
  # open "http://localhost:${port}/"
  open -a google\ chrome\ canary "http://localhost:${port}/" --args --disable-web-security
  # Set the default Content-Type to `text/plain` instead of `application/octet-stream`
  # And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
  python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

### CTags
alias ctags="`brew --prefix`/bin/ctags"

### FZF
# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}
# fh - search in your command history and execute selected command
function fh() {
  eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

### Python
alias py2="python"
alias pi2="pip"
alias py3='python3'
alias pi3='pip3'
alias pi3.upgrade='pi3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pi3 install -U'

### Mongo
alias mongod="ulimit -n 2048 && mongod --port 27017 --bind_ip 127.0.0.1 --dbpath /data/db"

### Vim
alias vim="nvim"
alias vi="vim"
alias vi.cnf="vi ~/.config/nvim/init.vim"
alias vi.cnf.plug="vi ~/.config/nvim/plug-manager.vim"
alias vi.plug.clean="vi +PlugClean +qall"
alias vi.plug.diff="vi +PlugDiff"
alias vi.plug.install="vi +PlugInstall +qall"
alias vi.plug.snapshot="vi +PlugSnapshot"
alias vi.plug.status="vi +PlugStatus"
alias vi.plug.update="vi +PlugUpdate"
alias vi.plug.upgrade="vi +PlugUpgrade"

### TMUX
alias tmux.conf="vi ~/.tmux.conf"
alias ta="tmux attach -t"
alias tad="tmux attach -d -t"
alias ts="tmux new-session -s"
alias tl="tmux list-sessions"
alias tksv="tmux kill-server"
alias tkss="tmux kill-session -t"

### Redis
alias redis-server="redis-server /usr/local/etc/redis.conf"

### NPM
alias npm.list='nvm current && npm list -g --depth=0'
npm-prefix() {
  npm config set prefix $NVM_DIR/versions/node/:"$@"
}
npm-build() {
  npm run build:"$@"
}
npm-start() {
  npm run start:"$@"
}

### Redsmin
alias redsmin='REDSMIN_KEY=5a668f6bcbcc9d950696aacb redsmin'

### Sublime
alias sublime='open /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'