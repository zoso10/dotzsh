# MySQL
export MYSQL_HOME=/usr/local/mysql
export PATH=$MYSQL_HOME/bin:$PATH

# Prefer homebrew
export PATH=/usr/local/bin:$PATH # I may end up regretting this...
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export EDITOR=vim
export BUNDLER_EDITOR=vim
export PGHOST=localhost

# Android
export ANDROID_HOME=$HOME/Documents/adt-bundle-mac-x86_64-20140702/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# Docker exports
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/tewing/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# Postgres App
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
