# Check if zoxide command exists
if command -v zoxide &>/dev/null; then
    eval "$(zoxide init --cmd cd zsh)"
fi