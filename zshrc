#!/bin/zsh

# asdf
if [[ -x `which brew` ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  . `brew --prefix asdf`/libexec/asdf.sh
else
  . $HOME/.asdf/asdf.sh
fi

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
#
# Hunt Club specific aliases
if [ -f ~/.zsh/huntclub.zsh ]; then
  source ~/.zsh/huntclub.zsh
fi

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

# rust
if [ -f $HOME/.cargo/env ]; then
  source "$HOME/.cargo/env"
fi

# direnv
if [[ -x `which direnv` ]]; then
  eval "$(direnv hook zsh)"
fi
