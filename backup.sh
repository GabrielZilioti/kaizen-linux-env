#!/usr/bin/env bash
set -euo pipefail

TIMESTAMP="$(date +%Y%m%d_%H%M%S)"
BACKUP_DIR="$HOME/.config_backup_$TIMESTAMP"

echo "==> Creating backup at: $BACKUP_DIR"
mkdir -p "$BACKUP_DIR"

backup_file() {
    local source_file="$1"

    if [ -e "$source_file" ]; then
        echo "Backing up $source_file"
        cp -r "$source_file" "$BACKUP_DIR/"
    fi
}

backup_file "$HOME/.bashrc"
backup_file "$HOME/.gitconfig"
backup_file "$HOME/.config/starship.toml"

echo "==> Backup completed."