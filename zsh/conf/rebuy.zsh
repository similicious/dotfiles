# only add this
if [[ "$(hostname)" == "rebuy-s.wienecke" ]]; then

    # regrant aliases
    alias regrant="~/repos/vagrant/regrant"
    alias re="regrant"
    alias rep="git -C ~/repos/vagrant pull"
    alias ryclt="~/repos/rebuy-clt/bin/console"

    # dns
    alias dnsfix='source $DOTFILES_DIR/secrets && sudo mv "$( [ -f /etc/resolver/$SECRETS_DOMAIN ] && echo /etc/resolver/$SECRETS_DOMAIN || echo /etc/resolver/${SECRETS_DOMAIN}.bak)" "$( [ -f /etc/resolver/$SECRETS_DOMAIN ] && echo /etc/resolver/${SECRETS_DOMAIN}.bak || echo /etc/resolver/$SECRETS_DOMAIN)" &&  sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder && ls /etc/resolver'

    # regrant completions
    fpath=(~/.rebuy/completion $fpath)
fi

