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
alias rl="source ~/.zshenv && source $ZDOTDIR/.zshrc"

# dotfiles config
alias config="git -C $DOTFILES_DIR"

# create empty project
alias scratch='function _scratch() { folder_name="$REPOS_DIR/scratch/$(date +%F)-${(z)1}"; mkdir -p "$folder_name"; code "$folder_name"; }; _scratch'
