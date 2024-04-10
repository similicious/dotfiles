# dotfiles

## Setup

### Create and populate secrets

```
cp secrets.sample secrets
```

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

```
# Mac
ln -s $DOTFILES_DIR/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```

### Git

```
ln -s $DOTFILES_DIR/git/.gitconfig ~/.gitconfig
ln -s $DOTFILES_DIR/git/.gitconfig-untracked ~/.gitconfig-untracked

# on a work computer
ln -s $DOTFILES_DIR/git/.gitconfig-work ~/.gitconfig-work
```
