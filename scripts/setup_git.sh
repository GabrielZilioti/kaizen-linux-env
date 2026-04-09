#!/usr/bin/env bash
set -euo pipefail

echo "==> Configuring Git..."

git config --global init.defaultBranch main
git config --global pull.rebase false

echo "==> Git basic configuration applied."