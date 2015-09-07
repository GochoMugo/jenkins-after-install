#
# prepare the repo
#

# modules
msu_require "console"

DEPS="grep"

BASH_HEADER="# added by jenkins-after-install"
BASH_STRING="
${BASH_HEADER}
export HOME=$HOME
export PATH=$HOME/bin:\$PATH
"

function run() {
    log "create a bin/ directory for placing executables"
    mkdir -p bin/

    log "create a lib/ directory for placing libraries, etc."
    mkdir -p lib/

    log "updating bashrc"
    BASHRC=$HOME/.bashrc
    grep "$BASH_HEADER" $BASHRC || {
        echo "$BASH_STRING" >> $BASHRC
    }

    log "setting up nodejs"
    msu - jenkins-after-install.nodejs.run

    log "setting up php"
    msu - jenkins-after-install.php.run
}
