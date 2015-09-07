#
# prepare the repo
#

# modules
msu_require "console"

function run() {
    log "create a bin/ directory for placing executables"
    mkdir -p bin/

    log "create a lib/ directory for placing libraries, etc."
    mkdir -p lib/

    log "creating a starter bashrc"
    BASHRC=$HOME/.bashrc
    echo "export HOME=$HOME" >> $BASHRC
    echo "export PATH=$HOME/bin:\$PATH" >> $BASHRC

    log "setting up nodejs"
    msu - jenkins-after-install.nodejs.run

    log "setting up php"
    msu - jenkins-after-install.php.run
}
