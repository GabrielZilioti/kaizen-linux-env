#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

mkdir -p "$HOME/.config"

link_file() {
    local source="$1"
    local target="$2"

    if [ -L "$target" ] || [ -e "$target" ]; then
        rm -rf "$target"
    fi

    ln -s "$source" "$target"
    echo "Linked $target -> $source"
}

link_file "$REPO_DIR/configs/bashrc" "$HOME/.bashrc"
link_file "$REPO_DIR/configs/gitconfig" "$HOME/.gitconfig"
link_file "$REPO_DIR/configs/starship.toml" "$HOME/.config/starship.toml"