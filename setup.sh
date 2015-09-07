#
# prepare the repo
#

# modules
msu_require "console"

log "create a bin/ directory for placing executables"
mkdir -p bin/

log "create a lib/ directory for placing libraries, etc."
mkdir -p lib/

log "creating a starter bashrc"
echo "export HOME=$HOME" >> $HOME/.bashrc

log "setting up nodejs"
bash nodejs.sh

log "setting up php"
bash php.sh

log "setting up .bashrc"
cat .bashrc | tee .bashrc
