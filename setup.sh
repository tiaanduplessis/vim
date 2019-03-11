#!/usr/bin/env bash

BASE_DIR="$HOME/.vim"
AUTOLOAD_DIR="$BASE_DIR/autoload"

curl -fLo $AUTOLOAD_DIR/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
wget https://raw.githubusercontent.com/tiaanduplessis/vim/master/vimrc -O $BASE_DIR/vimrc


# Neovim
# curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim