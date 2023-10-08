# Mark all scripts executable
for file in "$DOTFILES_DIR/scripts"/*; do
    if [ -f "$file" ]; then
        chmod +x "$file"
    fi
done

# Add scripts dir to path
path+=("$DOTFILES_DIR/scripts")
export PATH