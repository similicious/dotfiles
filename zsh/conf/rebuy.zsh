# only add this
if [[ "$(hostname)" == "rebuy-s.wienecke" ]]; then

    # regrant aliases
    alias regrant="~/repos/vagrant/regrant"
    alias re="regrant"
    alias rep="git -C ~/repos/vagrant pull"
    alias ryclt="~/repos/rebuy-clt/bin/console"

    # repos
    WEB_PATH="~/repos/web"
    alias web="cd $WEB_PATH"
    alias blue="cd $WEB_PATH/apps/blue-angular"
    alias green="cd $WEB_PATH/apps/green-angular"
    alias my="cd $WEB_PATH/apps/my-angular"

    alias sblue="cd $WEB_PATH/blue"
    alias sgreen="cd $WEB_PATH/green"
    alias smy="cd $WEB_PATH/my"
    
    # dns
    alias dnsfix='source $DOTFILES_DIR/secrets && sudo mv "$( [ -f /etc/resolver/$SECRETS_DOMAIN ] && echo /etc/resolver/$SECRETS_DOMAIN || echo /etc/resolver/${SECRETS_DOMAIN}.bak)" "$( [ -f /etc/resolver/$SECRETS_DOMAIN ] && echo /etc/resolver/${SECRETS_DOMAIN}.bak || echo /etc/resolver/$SECRETS_DOMAIN)" &&  sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder && ls /etc/resolver'

    # regrant completions
    fpath=(~/.rebuy/completion $fpath)
fi

