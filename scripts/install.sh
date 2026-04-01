#!/bin/zsh
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

mkdir -p "$HOME/.config/lsd"
cp "$ROOT_DIR/configs/starship.toml" "$HOME/.config/starship.toml"
cp "$ROOT_DIR/configs/lsd/config.yaml" "$HOME/.config/lsd/config.yaml"
cp "$ROOT_DIR/configs/lsd/colors.yaml" "$HOME/.config/lsd/colors.yaml"

cat <<EOF
Copied config files:

  ~/.config/starship.toml
  ~/.config/lsd/config.yaml
  ~/.config/lsd/colors.yaml

Add this line to ~/.zshrc:

  source $ROOT_DIR/shell/zsh-snippet.zsh

Add this line to ~/.zprofile:

  source $ROOT_DIR/shell/zprofile-snippet.zsh

Then reload:

  exec zsh -il
EOF
