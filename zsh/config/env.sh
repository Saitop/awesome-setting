#!/bin/zsh

# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export EDITOR='subl -w'
# export PYTHONPATH=$PYTHONPATH
# export MANPATH="/usr/local/man:$MANPATH"

# Virtual Environment
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
# source /usr/local/bin/virtualenvwrapper.sh

# Owner
export USER_NAME="Hansun Lam"

# manage ruby version
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases
alias sourcezsh='source ~/.zshrc'

# Use sublimetext for editing config files
alias zshconfig="subl ~/.zshrc"
alias envconfig="subl ~/config/env.sh"
alias c2config="cd ~/config"
alias mw="cd ~/Documents/my_workspace"

# for autojump with command j
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# for python managment
eval "$(pyenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"


# run all cpp file directly using cppcompile main.cpp
alias cppcompile='c++ -std=c++11 -stdlib=libc++'

# export java home
export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"

# psql config
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
# postgres url
export DATABASE_URL=postgres:///$(whoami)

# go path
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/go/bin:/usr/local/go/bin

