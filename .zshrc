export ZSH="/home/similicious/.oh-my-zsh"

# Themes
ZSH_THEME="agnoster"

# Aliases
alias ez="nano ~/.zshrc"
alias hh="cd ~/"
alias config='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# Plugins
plugins=(
	git
	bundler
	dotenv
	rake
	zsh-autosuggestions
	z
	last-working-dir
	npm
	sudo
	extract
	history
	web-search
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
