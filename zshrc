#!/bin/zsh

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
if [ -a ~/.zsh/ezcater.zsh ]
then
    source ~/.zsh/ezcater.zsh
fi
