#
# Handle PHP ecosystem
#

# modules
msu_require "console"

# dependencies
DEPS="php curl"

log "installing composer"
curl -sS https://getcomposer.org/installer | php

log "adding composer alias to bashrc"
echo "alias composer='HOME=$HOME composer'" >> $HOME/.bashrc
