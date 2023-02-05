source  ~/antigen.zsh

# Aliases
alias ez="nano ~/.zshrc"
alias hh="cd ~/"
alias please='sudo $(fc -ln -1)'
alias qr="qrencode -t ansiutf8"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dcl="docker-compose logs -f"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle git
antigen bundle ssh-agent
antigen bundle history
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme af-magic

antigen apply
