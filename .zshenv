export PATH=/usr/local/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
eval `/usr/libexec/path_helper -s`

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export SCALA_HOME=/usr/local/opt/scala/idea
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled"
export EDITOR='subl -w'

fpath=( "$HOME/.zsh/functions" $fpath )

# Deliveroo
export ORDERWEB_HOME=~/dev/Deliveroo/orderweb
export ROO_LOCAL_CONFIG=~/dev/Deliveroo/app_context.yml
export CAN_TEST_LATEX=1
