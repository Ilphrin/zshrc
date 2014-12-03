# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pellet_k/.zshrc'

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

autoload -Uz promptinit
promptinit
prompt elite2 red
typeset -U path
path=(~/.bin $path)

setopt correctall
setopt HIST_IGNORE_DUPS

autoload -U run-help
autoload run-help-git
autoload run-help-svn
autoload run-help-svk
alias help=run-help
alias la="ls -l --color=auto"
alias ls="ls --color=auto"
alias rm="rm -i"
bindkey "^[r" history-incremental-search-backward

# End of lines added by compinstall
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
