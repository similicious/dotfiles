alias sod-git-main='export SOD_GIT_MAIN=$((git branch -l main | grep main &>/dev/null) && echo main || echo master); echo using trunk name: $SOD_GIT_MAIN'
alias sod-branch='export SOD_BRANCH=$(git rev-parse --abbrev-ref HEAD); echo using branch name: $SOD_BRANCH'
alias not-main='(git branch --show-current | grep -vE "(master|main)") || (echo "ERROR: YOU ARE ON MAIN OR MASTER! ABORT" && exit 1)'
alias git-fetch-main='sod-git-main; git fetch origin $SOD_GIT_MAIN:$SOD_GIT_MAIN --update-head-ok'
alias push='sod-branch; not-main && (git push --set-upstream origin $SOD_BRANCH --force)'
alias rebase='git-fetch-main; EDITOR=true git rebase $SOD_GIT_MAIN --autosquash -i'
alias merge='git-fetch-main; git merge $SOD_GIT_MAIN'
alias pm='not-main && (merge && push)'
alias pr='not-main && (rebase && push)'

# remove branches which have been merged
alias git-rm-orphans='git fetch -p && git branch -vv | grep gone | cut -d' ' -f 3 | grep . | xargs git branch -D'