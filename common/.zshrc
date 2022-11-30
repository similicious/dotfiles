export ZSH="$HOME/.oh-my-zsh"

# Themes
ZSH_THEME="agnoster"

# Aliases
alias ez="nano ~/.zshrc"
alias hh="cd ~/"
alias please='sudo $(fc -ln -1)'
alias qr="qrencode -t ansiutf8"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dcl="docker-compose logs -f"

# Plugins
plugins=(
	git
	bundler
	dotenv
	rake
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	zsh-autosuggestions
	z
	last-working-dir
	npm
	sudo
	extract
	history
	web-search
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	zsh-syntax-highlighting
	ssh-agent
	nvm
)

source $ZSH/oh-my-zsh.sh
