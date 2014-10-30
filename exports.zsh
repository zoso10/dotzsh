# MySQL
export MYSQL_HOME=/usr/local/mysql
export PATH=$MYSQL_HOME/bin:$PATH

# Prefer homebrew
export PATH=/usr/local/bin:$PATH # I may end up regretting this...
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PS1="[%*][%n@%M]$ "
export EDITOR=vim
export BUNDLER_EDITOR=vim
export PGHOST=localhost
