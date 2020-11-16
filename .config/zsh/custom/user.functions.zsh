### CURL
function download(){
  curl -O "$1"
}

### FZF
fif() {
  if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
  rg -i --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
}

### HTTPSERVER
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

### NPM
npm-prefix() {
  npm config set prefix $NVM_DIR/versions/node/:"$@"
}
npm-build() {
  npm run build:"$@"
}
npm-start() {
  npm run start:"$@"
}

### DOCKER
# Get IP for container
dk-ip() {
  docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$@"
}
dk-ips() {
  docker inspect -f '{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)
}
# Docker logs for container
dk-ln() {
  docker logs -f `docker ps | grep $1 | awk '{print $1}'`
}
# Bash into the running container
dk-sh() {
  docker exec -t -i "$@" /bin/bash
}

### FILE COMMANDS
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
function mkcd() { mkdir -p "$@" && cd "$_"; }

