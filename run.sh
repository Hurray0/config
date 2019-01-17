#!/bin/bash

config_zsh()
{
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

config_vim()
{
  cp .vimrc ~/
  mkdir -p ~/.vim/bundle/
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  mkdir -p ~/.vim/bundle/vim-colors-solarized/colors/
  cp ./vim/hurray.vim ~/.vim/bundle/vim-colors-solarized/colors/
  vim +PluginInstall +qall
}

config_tmux()
{
  cp ./.tmux.conf ~/
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  bash ~/.tmux/plugins/tpm/bin/install_plugins
  tmux source-file ~/.tmux.conf
}

run()
{
  config_zsh
  config_vim
  config_tmux
}

run
