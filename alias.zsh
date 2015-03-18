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

# Hub
alias git=hub
alias gpr='git pull-request'

# Git
alias ga='git add'
alias gp='git push'
alias gs='git status -s'
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

# tmux
alias tx='tmux'
## tmux session management
alias txn='tx new -s'
alias txa='tx attach -t'
alias txs='tx switch -t'
alias txls='tx list-sessions'
alias txd='tx detach'
## tmux window management
alias txnw='tx new-window'
alias txw='tx select-window -t :'
alias txrw='tx rename-window'
## tmux pane management
alias txv='tx split-window'
alias txh='tx split-window -h'
alias txsp='tx select-pane'
alias txnp='tx select-pane -t :.+'
## quickly open tmux.conf
alias tmuxconf='vim ~/.tmux/tmuxconf'

# Override autocorrect
alias vim='nocorrect vim'
alias ber='nocorrect bundle exec rspec'
alias rspec='nocorrect rspec'

# Alias typos
alias celar='clear'
alias exti='exit'
alias eixt='exit'
