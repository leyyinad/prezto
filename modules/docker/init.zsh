#
# Provides some shortcuts and helpers for docker
#
alias docker-clean-containers="docker ps -a --no-trunc| grep 'Exit' | awk '{print \$1}' | xargs -L 1 docker rm"
alias docker-clean-images="docker images -a --no-trunc | grep none | awk '{print \$3}' | xargs -L 1 docker rmi"
alias docker-clean="docker-clean-containers && docker-clean-images"
