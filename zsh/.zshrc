# Clone antidote if necessary.
[[ -e ${ZDOTDIR:-~}/.antidote ]] ||
  git clone https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

# Loop through each .zsh file in the conf directory and source it
for file in $ZDOTDIR/conf/*.zsh; do
    source $file
done

# Mark all scripts executable
for file in "$DOTFILES_DIR/scripts"/*; do
    if [ -f "$file" ]; then
        chmod +x "$file"
    fi
done

# Add scripts dir to path
path+=("$DOTFILES_DIR/scripts")
export PATH

autoload -Uz promptinit && promptinit
autoload -Uz compinit; compinit
source ${ZDOTDIR}/.antidote/antidote.zsh
antidote load