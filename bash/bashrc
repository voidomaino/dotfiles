#
# ~/.bashrc
# Don't forget to create soft link in $HOME
# ln -s ~/.config/bashrc ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

#PS1='[\u@\h \W]\$ '
#source /usr/share/git/completion/git-prompt.sh
#export PS1='\u@\h \[\e[32m\]\w \[\e[91m\]$(__git_ps1)\[\e[00m\]$ '
eval "$(starship init bash)"

export EDITOR='nvim'

export PATH=/usr/local/texlive/2023/bin/x86_64-linux:$PATH
export MANPATH=/usr/local/texlive/texmf-local/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/texmf-local/doc/info:$INFOPATH
