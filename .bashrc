#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:~/.scripts
export EDITOR=vim
export GUI_EDITOR=gvim
export BROWSER=firefox
export FILE_MANAGER=vifm

alias ls='ls --color=auto'
alias btoff='sudo rfkill block bluetooth'
alias bton='sudo rfkill unblock bluetooth'
alias free='free -m'
alias keysi='localectl set-x11-keymap si'
alias keyus='localectl set-x11-keymap us'

mkcd () {
   mkdir "$1"
   cd "$1"
}

#export PS1="\[\033[38;5;214m\] \w \\$\[$(tput sgr0)\] "
export PS1="\[\033[38;5;25m\][\u@\h] \w \\$>\[$(tput sgr0)\] "
