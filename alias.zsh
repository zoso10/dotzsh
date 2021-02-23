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
# alias git=hub
# alias gpr='git pull-request'

# Git
alias ga='git add'
alias gp='git push'
alias gs='git status -s'
alias g='gs'
alias gd='git diff'
alias gm='git commit'
alias gma='git commit -a'
alias gc='git checkout'
alias gl='git plf'
alias gb='git branch'
alias gg='git grep'
alias gw='git worktree'
alias gf='git fetch'

# ZSH
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zsh/zshrc'"
alias zshrc='cd ~/.zsh; vim zshrc && reload'

# Vim
alias vimrc='cd ~/.vim && vim vimrc'

# Bundler
alias 🅱️='bundle'
alias b='bundle'
alias be='bundle exec'
alias bump='bundle update'

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

# Flush memcached
alias flushmem='echo flush_all | nc localhost 11211'

# Pretty Print JSON, mostly used for curl
alias pp='underscore print --color'

# Don't use Xcode ctags
if [ "$HAS_BREW" ]; then
  alias ctags="`brew --prefix`/bin/ctags"
fi

# Prompt switching
alias tiny="export TINY_PROMPT=1"
alias norm="export TINY_PROMPT=0"

# Add some defaults for grep
alias grep="grep --color"

alias ducks="du -cks * | sort -rn | head -11"

alias selfie="vlc v4l2:///dev/video0 --video-filter=scene --scene-path=/home/tyler/Pictures --scene-format=png -I dummy -A dummy vlc://quit"

# Structurizr
alias structurizr="docker run --rm -v "${PWD}":/root/data ghcr.io/aidmax/structurizr-cli-docker:latest"
