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
alias gc='git clone'
alias gs='git status'
alias grau='git remote add upstream'
alias gpum='git pull upstream master'
alias grum='git fetch upstream && git rebase upstream/master'
alias gcb='git checkout -b'

alias python=python3
alias pip=pip3

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
PATH=$PATH:/usr/local/sbin
