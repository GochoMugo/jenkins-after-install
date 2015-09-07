#
# Handle PHP ecosystem
#

# modules
msu_require "console"

# dependencies
DEPS="php curl"

function run() {
    log "installing composer"
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar $HOME/bin/composer
}
