#
# prepare the repo
#

# modules
msu_require "console"

DEPS="grep"

BASH_STRING="
# added by jenkins-after-install
export HOME=$HOME
export PATH=$HOME/bin:\$PATH
"

function run() {
    log "create a bin/ directory for placing executables"
    mkdir -p bin/

    log "create a lib/ directory for placing libraries, etc."
    mkdir -p lib/

    log "creating a starter bashrc"
    BASHRC=$HOME/.bashrc
    grep "$BASH_STRING" $BASHRC || {
        echo "$BASH_STRING" >> $BASHRC
    }

    log "setting up nodejs"
    msu - jenkins-after-install.nodejs.run

    log "setting up php"
    msu - jenkins-after-install.php.run
}
