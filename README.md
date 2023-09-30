# dotfiles

## Setup

### ZSH

- Clone this repository
- Create a `~./.zshenv` file with the following content

```
export DOTFILES_DIR=~/dotfiles
export ZDOTDIR=~/dotfiles/zsh

# Paths can be added like this
# path+=('/home/similicious/.local/bin')
# export PATH
```

### VSCode

Mac

```
ln -s ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```
