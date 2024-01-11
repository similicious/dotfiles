# only add this
if [[ "$(hostname)" == "rebuy-s.wienecke" ]]; then

    # regrant aliases
    alias regrant="~/repos/vagrant/regrant"
    alias re="regrant"
    alias rep="git -C ~/repos/vagrant pull"
    alias ryclt="~/repos/rebuy-clt/bin/console"

    # regrant completions
    fpath=(~/.rebuy/completion $fpath)
fi

