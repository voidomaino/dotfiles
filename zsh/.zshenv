export ZDOTDIR="$HOME/.config/zsh"

export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

export EDITOR="nvim"
export PATH=$PATH:/home/lhc/.local/bin

export PATH=$PATH:/usr/local/texlive/2024/bin/x86_64-linux
export MANPATH=$MANPATH:/usr/local/texlive/2024/texmf-dist/doc/man
export INFOPATH=$INFOPATH:/usr/local/texlive/2024/texmf-dist/doc/info

eval "$(starship init zsh)"
