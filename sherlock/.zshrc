# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=50000
SAVEHIST=1000
setopt autocd notify
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/eric/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PATH="$PATH:$HOME/.local/bin:$HOME/.cargo/bin"

alias history="history 1"
export TERM=xterm-256color
export PATH=$PATH:/usr/local/go/bin

PROG=croc
_CLI_ZSH_AUTOCOMPLETE_HACK=1
source /etc/zsh/zsh_autocomplete_croc

eval "$(starship init zsh)"
