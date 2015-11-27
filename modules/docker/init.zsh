#
# Provides some shortcuts and helpers for docker
#
alias docker-clean-containers="docker ps -a -notrunc| grep 'Exit' | awk '{print \$1}' | xargs -L 1 -r docker rm"
alias docker-clean-images="docker images -a -notrunc | grep none | awk '{print \$3}' | xargs -L 1 -r docker rmi"
alias docker-clean="docker-clean-containers && docker-clean-images"
