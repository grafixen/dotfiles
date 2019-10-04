# Docker

# docker-compose
alias dc='docker-compose'

# docker-machine
alias dm='docker-machine'
alias dmx='docker-machine ssh'


# docker
alias dk='docker'

alias dkl='docker logs'
alias dklf='docker logs -f'

alias dkrm='docker rm'
alias dkflush='docker rm `docker ps --no-trunc -aq`'
alias dkflush2='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'

alias dkt='docker stats --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.NetIO}}"'
alias dkps="docker ps --format '{{.ID}} ~ {{.Names}} ~ {{.Status}} ~ {{.Image}}'"

alias dks='docker service'
alias dkst="docker stack"
alias dksw="docker swarm"

dk-ip() {
  docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$@"
}
dk-ips() {
  docker inspect -f '{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)
}
dkln() {
  docker logs -f `docker ps | grep $1 | awk '{print $1}'`
}
