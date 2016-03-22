#!/bin/zsh

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# For git completion
fpath=(~/.zsh $fpath)

source ~/.zsh/colors.zsh
source ~/.zsh/checks.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/alias.zsh
source ~/.zsh/binding.zsh
source ~/.zsh/functions.zsh

# ezCater specific aliases
if [ -f ~/.zsh/ezcater.zsh ]; then
    source ~/.zsh/ezcater.zsh
fi

# Virtualenv/VirtualenvWrapper
source /usr/local/bin/virtualenvwrapper.sh
