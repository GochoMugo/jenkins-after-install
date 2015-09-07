#
# Handle Node.js ecosystem
#

# modules
msu_require "console"

# dependencies
DEPS="curl"

log "installing nvm"
export NVM_DIR=$PWD/lib/.nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | bash

log "adding npm alias to bashrc"
echo "alias npm='HOME=$HOME npm'" >> $HOME/.bashrc
