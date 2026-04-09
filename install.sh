#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "==> Installing development environment..."

bash "$REPO_DIR/scripts/setup_symlinks.sh"
bash "$REPO_DIR/scripts/setup_git.sh"

if command -v apt >/dev/null 2>&1; then
    bash "$REPO_DIR/scripts/install_packages_ubuntu.sh"
else
    echo "==> apt not found, skipping Ubuntu package installation."
fi

echo "==> Installation finished."