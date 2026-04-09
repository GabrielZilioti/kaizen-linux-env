#!/usr/bin/env bash
set -euo pipefail

echo "==> Updating package list..."
sudo apt update

echo "==> Installing common packages..."
sudo apt install -y \
    git \
    curl \
    wget \
    vim \
    htop \
    unzip \
    tree \
    build-essential \
    python3 \
    python3-pip

echo "==> Package installation completed."