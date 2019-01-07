autoload -U compinit && compinit
zmodload -i zsh/complist

# Fallback to built in ls colors
zstyle ':completion:*' list-colors ''

# Make the list prompt friendly
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'

# Make the selction prompt friendly when there are a lot of choices
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'

# Match uppercase from lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.zsh

fpath=(~/.zsh $fpath)
