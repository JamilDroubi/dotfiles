# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac


## Aliases
alias grep='rg --color=always'
alias egrep='egrep --color=always'
alias fgrep='fgrep --color=always'
alias ls='ls -CA --color=always'
alias la='ls -a'
alias bash='clear && bash'
alias st='st -f 'mononoki:pixelsize=19' &'
alias vim='nvim'

## Environmental Variables
export TERM='xterm-256color'
export EDITOR='vim'
export VISUAL='vim'
export PS1="\033[0;35m\u \w \$ \033[m"
export TERM='xterm-256color'
export EDITOR='vim'
export VISUAL='vim'
export LANG="en_US.UTF-8"

cd ~
clear
