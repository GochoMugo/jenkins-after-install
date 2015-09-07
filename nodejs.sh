#
# Handle Node.js ecosystem
#

# modules
msu_require "console"

# dependencies
DEPS="curl"

function run() {
    log "installing nvm"
    export NVM_DIR=$HOME/lib/.nvm
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | bash
}
