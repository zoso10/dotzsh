# Prefer homebrew
export PATH=/usr/local/bin:$PATH

export EDITOR=vim
export BUNDLER_EDITOR=vim
export PGHOST=localhost

# Ruby
export PATH=$HOME/.rbenv/bin:$PATH

# Go
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin

# MySQL
export MYSQL_HOME=/usr/local/mysql
export PATH=$MYSQL_HOME/bin:$PATH

# Rust
export PATH=$PATH:$HOME/.cargo/bin

# GPG
export GPG_TTY=$(tty)

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export HISTFILE=~/.histfile
