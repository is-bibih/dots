#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# alias for dotfiles
alias config='/usr/bin/git --git-dir=/home/vivi/.dotfiles/ --work-tree=/home/vivi'

# alias to include id and client secret for grive
alias grive='grive --id 556210294094-qm0jmqlhr5e6cp0m16dvoo2aoodh666a.apps.googleusercontent.com --secret jECFDH2ZG_hSmGkpzpHGCoU_'

# add user base to python path
export PYTHONPATH=$(python -c "import site, os; print(os.path.join(site.USER_BASE, 'lib', 'python', 'site-packages'))"):$PYTHONPATH
