#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "==> Starting bootstrap..."

chmod +x "$REPO_DIR/install.sh"
chmod +x "$REPO_DIR/backup.sh"

find "$REPO_DIR/scripts" -type f -name "*.sh" -exec chmod +x {} \;

echo "==> Running backup first..."
"$REPO_DIR/backup.sh"

echo "==> Running install..."
"$REPO_DIR/install.sh"

echo "==> Bootstrap completed successfully."