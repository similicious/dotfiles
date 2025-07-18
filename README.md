# 🔧 Dotfiles

> Personal development environment configuration files and scripts

## 📋 Overview

This repository contains my personal dotfiles and configuration setup for a consistent development environment across different machines. It includes configurations for:

- **ZSH** with [Antidote](https://github.com/mattmc3/antidote) plugin manager
- **Git** with multiple profile support
- **VSCode** settings and extensions
- **Custom scripts** for productivity and automation
- **Environment secrets** management

## 🚀 Quick Start

### Prerequisites

- macOS or Linux
- Git installed
- ZSH shell

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/similicious/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Set up environment variables**

   Create `~/.zshenv` with the following content:

   ```bash
   export REPOS_DIR=~/repos
   export DOTFILES_DIR=~/dotfiles
   export ZDOTDIR=~/dotfiles/zsh

   # Add custom paths as needed
   # path+=('/home/user/.local/bin')
   # export PATH
   ```

3. **Configure secrets**
   ```bash
   cp secrets.sample secrets
   # Edit secrets file with your actual values
   ```

### 🔗 Symlink Configurations

#### ZSH

The ZSH configuration will automatically load when you set `ZDOTDIR` in your `~/.zshenv`.

#### VSCode

```bash
# macOS
ln -s $DOTFILES_DIR/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

# Linux
ln -s $DOTFILES_DIR/vscode/settings.json ~/.config/Code/User/settings.json
```

#### Git

```bash
# Basic git config
ln -s $DOTFILES_DIR/git/.gitconfig ~/.gitconfig

# Personal/untracked config
ln -s $DOTFILES_DIR/git/.gitconfig-untracked ~/.gitconfig-untracked

# Work-specific config (optional)
ln -s $DOTFILES_DIR/git/.gitconfig-work ~/.gitconfig-work
```

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.
