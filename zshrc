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
alias s='kitty +kitten ssh'
alias claude="/Users/huwng/.claude/local/claude"

eval "$(starship init zsh)"

export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@15/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@15/include"

. "$HOME/.local/bin/env"

# node
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/hungtran/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# vals ai
export VALS_SERVER_ENV=LOCAL
export REDIS_ENDPOINT=localhost
export PYTHONHASHSEED=0
export VALS_ENV=LOCAL

alias zshe='vim ~/.zshrc'
alias szsh='source ~/.zshrc'
alias cvals='conda activate vals'
alias codex5='codex -m gpt-5-codex -c model_reasoning_effort="high" --search --yolo'

source <(fzf --zsh)


# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/hungtran/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
eval "$(direnv hook zsh)"


# bun completions
[ -s "/Users/huwng/.bun/_bun" ] && source "/Users/huwng/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

export PATH="$PATH:/Users/huwng/code/depot_tools"
export PATH=~/.npm-global/bin:$PATH
export PATH="/opt/homebrew/opt/ccache/libexec:$PATH"

export HOMEBREW_NO_AUTO_UPDATE=1
