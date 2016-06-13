#
# Provides some shortcuts and helpers for docker
#

alias machine="docker-machine"
alias compose="docker-compose"
alias swarm="docker-swarm"

alias d="docker"
alias dm="docker-machine"
alias dc="docker-compose"
alias ds="docker-swarm"
alias de="docker exec -t -i"

alias dcr="dc restart"
alias dcb="dc build"
alias dcu="dc up --build -d && dc logs -f"
alias dcl="dc logs -f"

alias dockviz="docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz"
