# only add this
if [[ "$(hostname)" == "rebuy-s.wienecke" ]]; then

    # regrant aliases
    alias regrant="~/repos/vagrant/regrant"
    alias re="regrant"
    alias rep="git -C ~/repos/vagrant pull"

    # regrant completions
    fpath=(~/.rebuy/completion $fpath)
fi

