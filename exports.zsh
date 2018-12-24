# Prefer homebrew
export PATH=/usr/local/bin:$PATH # I may end up regretting this...
export EDITOR=vim
export BUNDLER_EDITOR=vim
export PGHOST=localhost

# Ruby
export PATH=$PATH:$HOME/.rbenv/bin

# Go
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin

# Postgres App
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin

# MySQL
export MYSQL_HOME=/usr/local/mysql
export PATH=$MYSQL_HOME/bin:$PATH

# Rust
export PATH=$PATH:$HOME/.cargo/bin

# GPG
export GPG_TTY=$(tty)
