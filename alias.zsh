# Ping
alias pingg='ping -c 3 google.com'
alias pingd='ping -c 3 8.8.8.8'

# Listing directories
alias ll='ls -lahG'
alias lls='ls -aG'
alias lh='ls -d .*'

# Changing directories
alias ..='cd ..'
alias ...='cd ../..'

# Creating directories
alias mkdir='mkdir -p'

# Git
alias ga='git add'
alias gp='git push'
alias gs='git status'
alias gd='git diff'
alias gm='git commit'
alias gma='git commit -a'
alias gc='git checkout'
alias gl='git pull'
alias gb='git branch'

# ZSH
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zsh/zshrc'"
alias zshrc='cd ~/.zsh; vim zshrc && reload'

# Vim
alias vimrc='vim ~/.vim/vimrc'

# Bundler
alias bi='bundle install'
alias be='bundle exec'

# Pow
alias pow_restart='touch tmp/restart.txt'

# Rack
alias rackDown4What='rackup'
