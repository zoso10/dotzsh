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

# Prompt
git_branch() {
  ref=$(git symbolic-ref HEAD --short 2> /dev/null)

  if [[ -n $ref ]]; then
    echo :$ref
  fi
}

export PROMPT='[%2d$fg_no_bold[white]$(git_branch)$reset_color] $fg_bold[red]❯❯❯$reset_color '
export RPROMPT=''
