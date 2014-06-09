#!/bin/zsh
# I'm lazy and don't feel like moving stuff over
# There's stuff in there that should be pruned anyway
source ~/.bash_profile

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


export PS1="[%*][%n@%M]$ "

source ~/.zsh/colors.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/alias.zsh
