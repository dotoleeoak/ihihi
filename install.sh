#!/bin/sh

INSTALL_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR"
curl -o "$INSTALL_DIR/ihihi" https://raw.githubusercontent.com/dotoleeoak/ihihi/main/ihihi
chmod +x "$INSTALL_DIR/ihihi"

if ! echo "$PATH" | grep -q "$INSTALL_DIR"; then
    echo "export PATH=\"\$PATH:$INSTALL_DIR\"" >> "$HOME/.bashrc"
    echo "export PATH=\"\$PATH:$INSTALL_DIR\"" >> "$HOME/.zshrc"
    export PATH="$PATH:$INSTALL_DIR"
fi

echo "ihihi is installed successfully! 🎉"
