eval "$(/opt/homebrew/bin/brew shellenv)"
export EDITOR='vim'
export CLICOLOR=1
export PS1=$'%n@%m:\e[0;36m%~\e[0m$ '

HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY

alias ls='ls --color=auto'
alias ll='ls -lah'
alias grep='grep --color=auto'


# auto/tab completion
autoload -U compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'


