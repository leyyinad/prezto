#
# Provides some shortcuts and helpers for docker
# and especially boot2docker on OS X
#

# boot2docker
if which boot2docker &> /dev/null; then
    $(boot2docker shellinit 2>/dev/null)
fi

function docker-ip() {
  boot2docker ip 2>/dev/null
}
