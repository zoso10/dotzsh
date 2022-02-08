#!/bin/zsh

# asdf
. $HOME/.asdf/asdf.sh

source ~/.zsh/colors.zsh
source ~/.zsh/checks.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/alias.zsh
source ~/.zsh/binding.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/misc.zsh

# ezCater specific aliases
if [ -f ~/.zsh/ezcater.zsh ]; then
  source ~/.zsh/ezcater.zsh
fi

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

# rust
source "$HOME/.cargo/env"

# direnv
eval "$(direnv hook zsh)"
