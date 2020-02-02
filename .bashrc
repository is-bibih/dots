#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/vivi/.dotfiles/ --work-tree=/home/vivi'
alias grive='grive --id 556210294094-qm0jmqlhr5e6cp0m16dvoo2aoodh666a.apps.googleusercontent.com --secret jECFDH2ZG_hSmGkpzpHGCoU_'
