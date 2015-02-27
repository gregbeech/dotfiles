export PATH=/usr/local/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export SCALA_HOME=/usr/local/opt/scala/idea
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled"
export EDITOR='subl -w'

fpath=( "$HOME/.zsh/functions" $fpath )
