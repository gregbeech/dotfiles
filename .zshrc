# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/greg/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# aliases
alias gs='git status'
alias gl='git log --pretty=oneline --abbrev-commit'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gp='git pull'
alias gpush='git push'
alias gpushup='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'

alias redis-start='launchctl start homebrew.mxcl.redis'
alias redis-stop='launchctl stop homebrew.mxcl.redis'

alias ssh-staging='ssh -A -l gsb test.deliveroo.com'

# prompt (https://github.com/sindresorhus/pure)
autoload -U promptinit && promptinit
prompt pure

# navigation
DIRSTACKSIZE=8
setopt autopushd pushdminus pushdsilent pushdtohome

# completions
autoload -U compinit
compinit -C
autoload -U zstyle+
zstyle ':completion:*' completer _complete _list _oldlist _expand _ignored _match _correct _approximate _prefix
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# highlighting (https://github.com/zsh-users/zsh-syntax-highlighting)
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# paths
export PATH=$PATH:/usr/local/sbin
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin/:$PATH"
