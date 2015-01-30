#
# Provides some shortcuts and helpers for docker
# and especially boot2docker on OS X
#

# boot2docker
if which boot2docker &> /dev/null; then
    $(boot2docker shellinit 2>/dev/null)

    # see
    # http://blog.sequenceiq.com/blog/2014/07/05/docker-debug-with-nsenter-on-boot2docker/
    function docker-enter() {
      boot2docker ssh '[ -f /var/lib/boot2docker/nsenter ] || docker run --rm -v /var/lib/boot2docker/:/target jpetazzo/nsenter'
      boot2docker ssh -t sudo /var/lib/boot2docker/docker-enter "$@"
    }
fi

function docker-ip() {
  boot2docker ip 2>/dev/null
}
