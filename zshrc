#!/bin/zsh
# I'm lazy and don't feel like moving stuff over
# There's stuff in there that should be pruned anyway
source ~/.bash_profile

source ~/.zsh/colors.zsh
source ~/.zsh/checks.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/alias.zsh
source ~/.zsh/binding.zsh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# ezCater specific aliases
source ~/.zsh/ezcater.zsh
