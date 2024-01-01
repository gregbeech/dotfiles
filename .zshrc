HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
bindkey -e

# fix osx input
bindkey "[C" forward-word
bindkey "[D" backward-word

# completion system
zstyle :compinstall filename '/Users/gsb/.zshrc'
autoload -Uz compinit
compinit
autoload -Uz zstyle+
zstyle ':completion:*' completer _complete _list _oldlist _expand _ignored _match _correct _approximate _prefix
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# paths
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# aliases
alias be='bundle exec'
alias gb='git branch'
alias gs='git status'
alias gl='git log --pretty=oneline --abbrev-commit'
alias gc='git checkout'
alias gp='git pull'
alias gpush='git push'
alias gpushup='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
alias greset='git fetch && git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)'

# navigation
DIRSTACKSIZE=8
setopt autopushd pushdminus pushdsilent pushdtohome

# prompt
eval "$(starship init zsh)"

# rbenv
eval "$(rbenv init - zsh)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# useful functions
timeat() { ruby -e "puts Time.at($1).utc" }
unixtime() { ruby -r time -e "puts Time.parse('$* UTC').to_i" }

# shell integration (https://iterm2.com/documentation-shell-integration.html)
source ~/.iterm2_shell_integration.zsh

# syntax highlighting (https://github.com/zsh-users/zsh-syntax-highlighting)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
