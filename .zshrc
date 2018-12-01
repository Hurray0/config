export ZSH=$HOME/.oh-my-zsh
export TERM=screen-256color

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH=$PATH:$HOME/bin:/usr/local/bin
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#@.
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# java
#export JAVA_6_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA_6_HOME=/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA_7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home
export JAVA_HOME=$JAVA_7_HOME

alias jdk8='export JAVA_HOME=$JAVA_8_HOME'
alias jdk7='export JAVA_HOME=$JAVA_7_HOME'
alias jdk6='export JAVA_HOME=$JAVA_6_HOME'
# set JAVA_HOME=/usr/java/jdk/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/
# export JAVA_HOME
export PATH=$PATH:$JAVA_HOME/bin
export CLASSPATH=.;

# sublime text 2
alias sub='open -a "Sublime Text 2"'

# tree
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

#python
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python
export PYTHONPATH=$PYTHONPATH:/Library/Frameworks/Python.framework/Versions/2.7/bin
export PYTHONPATH=$PATHONPATH:/usr/local/lib/python2.7/site-packages
export PATH=$PATH:/lib/python2.7/site-packages
export PATH=$PATH:/usr/local/share/python
export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/2.7/bin

#hydra
#export HYDRA_HOST_FILE=/etc/hydra/hosts

#mpich2
export PATH=/usr/local/Cellar/mpich2/3.1.3_1/bin:$PATH

#svn
# alias svnadd="svn st | awk '{if ( $1 == "?") { print $2}}' | xargs svn add"
alias svnadd="svn st |grep ? |awk '{print $2}' |xargs svn add"
# alias svndel="svn del `svn st |grep ! |awk '{print $2}D1'`"

#color
# export CLICOLOR=1
# export LSCOLORS=axgxhxhxbxhxhxbxbxaxax

# terminal-notifier
alias noti="terminal-notifier -message"

# prolog(swipl)
#PATH=$PATH:/Applications/SWI-Prolog.app/Contents/MacOS

# my tools
# alias ip="ifconfig|grep 'inet[^6]'|sed 's/^.*inet //g'|sed 's/ netmask.*//g'|sed '1d'"

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
#export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/3.4/bin

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/2.7/bin

# mysql
export PATH=$PATH:/usr/local/mysql/bin/
#alias mysql=/usr/local/mysql/bin/mysql
#alias mysqladmin=/usr/local/mysql/bin/mysqladmin

# word count code (eg: wcc "*.py")
alias wcc=wcCode
wcCode()
{
  print $@" Lines: "
  find . -name $@ | xargs cat | wc -l
}

# matlab
export PATH=$PATH:/Applications/MATLAB_R2016b.app/bin/
alias matlab='matlab -nodesktop'

# 快速启动脚本
#export PATH=$PATH:/Users/hurray/Library/Mobile\ Documents/com\~apple\~CloudDocs/code/快速启动脚本/

# urlDecode
#alias urlDecode='python /Users/hurray/Library/Mobile\ Documents/com\~apple\~CloudDocs/code/快速启动脚本/urlDecode.py'

# rm --> mv /tmp/.trash/
alias remove=/bin/rm
alias rm=trash
alias ur=undelfile
undelfile()
{
    mv -i ~/tmp/.trash/$@ ./
}
trash()
{
  mv $@ ~/.Trash
}
clearTrash()
{
  /bin/rm -rf ~/.trash/*
}

# Python History
export PYTHONSTARTUP="/Users/hurray/.pythonstartup"

# wireshark
wiresharkOp()
{
  sudo chgrp admin /dev/bpf*
  sudo chmod g+rw /dev/bpf*
}

# Shana
alias Shana='python ~/!/Shana.py'

# Hello
figlet Hurray!

# django
export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/2.7/bin/
export PYTHONPATH=$PYTHONPATH:/Library/Frameworks/Python.framework/Versions/2.7/bin/

# python pip
export PYTHONPATH=$PATH:/usr/local/lib/python2.7/site-packages
export PATH=$PATH:/usr/local/lib/python2.7/site-packages

# get host ip
getHostIP()
{
cat ~/.ssh/config | grep -A 1 $@$ | sed -n 2p | cut -d ' ' -f 2
}

# QT5
export PATH=$PATH:/Users/hurray/Qt5.9.0/5.9/clang_64/bin

# jython
export PATH=$PATH:/Users/hurray/jython2.7.0/bin/

# ctags
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=/usr/local/src/omnetpp-4.6/bin:$PATH

# ant
ANT_HOME=/Users/hurray/condition/apache-ant-1.9.4
export PATH=$PATH:${ANT_HOME}/bin


# Hurray
alias s_ncsg='unset PYTHONPATH; sshuttle -r gh01-pub 10.18.0.0/16'
alias s_megvii='unset PYTHONPATH; sshuttle -r rjmp 10.201.106.1/20'
