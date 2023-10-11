# convenience
alias ez="code $DOTFILES_DIR"

# generate a qr code for the given string
alias qr="qrencode -t ansiutf8"

# docker compose
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dcl="docker-compose logs -f"

# override common commands with better versions
alias cat="bat"

# reload zsh config
alias rl="source ~/.zshrc"

# dotfiles config
alias config="git -C $DOTFILES_DIR"
