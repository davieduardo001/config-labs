#!/bin/bash

# Variables
GITHUB_USER="davieduardo001"
CONFIG_DIR="$HOME/configs"
REPOS=(
    "bash-config"
    "code-profiles"
    "fastfetch-my-conf"
    "kitty"
)

# Ensure the config directory exists
mkdir -p "$CONFIG_DIR"

# Clone all config repositories
for repo in "${REPOS[@]}"; do
    if [ ! -d "$CONFIG_DIR/$repo" ]; then
        echo "Cloning $repo..."
        git clone "https://github.com/$GITHUB_USER/$repo.git" "$CONFIG_DIR/$repo"
    else
        echo "$repo already exists. Skipping clone."
    fi
done

# --- Run setup scripts ---

# Run bash-config setup
echo "Setting up bash-config..."
if [ -f "$CONFIG_DIR/bash-config/start.sh" ]; then
    bash "$CONFIG_DIR/bash-config/start.sh"
else
    echo "bash-config/start.sh not found."
fi

# Run kitty setup
echo "Setting up kitty..."
if [ -f "$CONFIG_DIR/kitty/setup_kitty.sh" ]; then
    bash "$CONFIG_DIR/kitty/setup_kitty.sh"
else
    echo "kitty/setup_kitty.sh not found."
fi

# Install fonts
echo "Installing JetBrains Nerd Font..."
if [ -f "$(dirname "$0")/install_jetbrains_nerd_font.sh" ]; then
    bash "$(dirname "$0")/install_jetbrains_nerd_font.sh"
else
    echo "install_jetbrains_nerd_font.sh not found."
fi

# Apply fastfetch config
echo "Applying fastfetch configuration..."
if [ -f "$CONFIG_DIR/fastfetch-my-conf/apply.sh" ]; then
    bash "$CONFIG_DIR/fastfetch-my-conf/apply.sh"
else
    echo "fastfetch-my-conf/apply.sh not found."
fi

echo "---------------------------------------------"
echo "Setup complete!"
echo "Please restart your terminal or source your .bashrc/.zshrc to apply changes."
echo "---------------------------------------------"

