autoload -U colors && colors

export PROMPT_MAX_LEN=20
export TINY_PROMPT=0

# Prompt
git_branch() {
  ref=$(git symbolic-ref HEAD --short 2> /dev/null)

  if [[ -n $ref ]]; then
    echo :$ref
  fi
}

shorten_dir_names() {
  BRANCH=$(git_branch)
  BRANCH_LEN=${#BRANCH}
  DIR=$(pwd)
  DIR_LEN=${#DIR}
  if [[ "$BRANCH_LEN" -gt "$PROMPT_MAX_LEN" ]] || [[ "$DIR_LEN" -gt "$PROMPT_MAX_LEN" ]]; then
    FIRST_DIR=$(basename $DIR)
    FIRST_FIRST_LETTER=$(echo $(echo "${FIRST_DIR//./}") | head -c 1)
    SECOND_FIRST_LETTER=$(echo $(echo "${$(basename $(echo "${DIR//$FIRST_DIR/}"))//./}") | head -c 1)
    echo "$SECOND_FIRST_LETTER/$FIRST_FIRST_LETTER"
  else
    echo "%2d"
  fi
}

export PROMPT='[$(shorten_dir_names)$PR_WHITE$(git_branch)$RESET] $PR_BOLD_RED❯❯❯$RESET '
export RPROMPT='$(if [[ $? == 0 ]]; then echo ""; else echo "¯\_(ツ)_/¯"; fi)'

# LOL Prompts
#export PROMPT='$(if [[ $? == 0 ]]; then echo "ᕕ( ᐛ )ᕗ "; else echo "¯\_(ツ)_/¯ "; fi)'
#export PROMPT='$(if [[ $? == 0 ]]; then echo "👍  "; else echo "👎  "; fi)'
