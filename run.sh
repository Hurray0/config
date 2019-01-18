#!/bin/bash

os_type()
{
  t=$(cat /etc/issue)
}

config_zsh()
{
  t=$(which zsh | grep 'not found')
  if [[ $t != "" ]]
  then
    # now only support CentOS
    yum install -y zsh
  fi
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

config_vim()
{
  ln -s `pwd`/.vimrc ~/
  mkdir -p ~/.vim/bundle/
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  mkdir -p ~/.vim/bundle/vim-colors-solarized/colors/
  ln -s `pwd`/vim/hurray.vim ~/.vim/bundle/vim-colors-solarized/colors/
  vim +PluginInstall +qall
}

config_tmux()
{
  ln -s `pwd`/.tmux.conf ~/
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  bash ~/.tmux/plugins/tpm/bin/install_plugins
  tmux source-file ~/.tmux.conf
}

run()
{
  counfig_zsh
  config_vim
  config_tmux
}

run
