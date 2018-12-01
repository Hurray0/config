#!/bin/bash

config_vim()
{
  cp .vimrc ~/
  mkdir -p ~/.vim/bundle/
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
}

config_tmux()
{
  cp ./.tmux.conf ~/
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  bash ~/.tmux/plugins/tpm/bin/install_plugins
  tmux source-file ~/.tmux.conf
}

config_vim
config_tmux

