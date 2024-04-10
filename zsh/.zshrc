# Clone antidote if necessary.
[[ -e ${ZDOTDIR:-~}/.antidote ]] ||
  git clone https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

# Loop through each .zsh file in the conf directory and source it
for file in $ZDOTDIR/conf/*.zsh; do
    source $file
done

autoload -Uz promptinit && promptinit
autoload -Uz compinit; compinit
source ${ZDOTDIR}/.antidote/antidote.zsh
antidote load
# bun completions
[ -s "/Users/s.wienecke/.bun/_bun" ] && source "/Users/s.wienecke/.bun/_bun"
