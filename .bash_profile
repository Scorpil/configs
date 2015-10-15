export PATH="/Users/scorpil/bin:/Users/scorpil/anacoonda/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"

# === Python ===
# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

gpip(){
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

# load virtualenvwrapper
source /usr/local/bin/virtualenvwrapper_lazy.sh

# === Tmux ===
source /Users/scorpil/.tmuxinator.zsh

# === Emacs ===
alias e="TERM=xterm-256color `brew --prefix`/bin/emacs -nw"
export EDITOR="`brew --prefix`/bin/emacs -nw"

# === Docker ===
alias dcu="docker-compose up"
alias dcb="docker-compose build"
alias dcd="dcb && dcu"
alias doc="docker-compose"

# === Vagrant ===
alias vgu="vagrant up"
alias vgp="vagrant provision && vagrant ssh"
alias vgs="vagrant up && vagrant ssh"
# there is an issue somewhere between vagrant chef and virtualbox that makes
# provision fail sometimes. This quick hack fixes it.
alias vgrp="rm .vagrant/machines/default/virtualbox/synced_folders; vagrant reload --provision && vagrant ssh"

# ===== Other =====
alias ctags="`brew --prefix`/bin/ctags"

export CLICOLOR=1
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# brew install git bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

export GOPATH="$HOME/.go"
