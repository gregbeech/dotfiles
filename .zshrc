HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
bindkey -e

# fix osx input
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey ";5D" backward-word
bindkey "^[[5D" backward-word
bindkey ";5C" forward-word
bindkey "^[[5C" forward-word
bindkey "^[OF" end-of-line
bindkey "^[OH" beginning-of-line

# completion system
zstyle :compinstall filename '/Users/gsb/.zshrc'
autoload -Uz compinit
compinit
autoload -Uz zstyle+
zstyle ':completion:*' completer _complete _list _oldlist _expand _ignored _match _correct _approximate _prefix
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# aliases
alias gb='git branch'
alias gs='git status'
alias gl='git log --pretty=oneline --abbrev-commit'
alias gc='git checkout'
alias gp='git pull'
alias gpush='git push'
alias gpushup='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
alias greset='git fetch && git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)'

# useful functions
timeat() { ruby -e "puts Time.at($1).utc" }
unixtime() { ruby -r time -e "puts Time.parse('$* UTC').to_i" }

# prompt (https://github.com/sindresorhus/pure)
autoload -U promptinit; promptinit
prompt pure

# navigation
DIRSTACKSIZE=8
setopt autopushd pushdminus pushdsilent pushdtohome

# rbenv
eval "$(rbenv init -)"

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# highlighting (https://github.com/zsh-users/zsh-syntax-highlighting)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
