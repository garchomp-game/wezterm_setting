#!/bin/bash

# Ubuntu Mono Nerd Fontのダウンロードとインストール
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/UbuntuMono.zip"
FONT_DIR="$HOME/.local/share/fonts"
mkdir -p "$FONT_DIR"
curl -L $FONT_URL -o "$FONT_DIR/UbuntuMono.zip"
unzip "$FONT_DIR/UbuntuMono.zip" -d "$FONT_DIR"
rm "$FONT_DIR/UbuntuMono.zip"

# フォントキャッシュの更新
fc-cache -fv

# Zshのインストール
if ! command -v zsh >/dev/null 2>&1; then
  sudo apt-get update && sudo apt-get install zsh -y
fi

# Oh My Zshのインストール
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Zshをデフォルトシェルに設定
chsh -s $(which zsh)
