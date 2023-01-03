function grep_dir_for_instance_methods_from() {
    for m in `rails runner "Object.const_get(ARGV.first).instance_methods.each { |m| puts m.to_s }" $1`; do
        git grep $m
    done
}

function git_history_grep_for() {
    git log -S $1 --pickaxe-regex | head -n 1 | awk '{print $2}' | xargs git checkout -q && echo "Usages after removal: " && git grep $1 && git checkout HEAD^ -q && echo "Usages before removal: " && git grep $1 && git checkout - -q && echo "Suspected last usage in `git show HEAD | head -n 1 | awk '{print $2}'`"
}

function current_diff() {
  git fetch --tags --quiet;
  local url="https://github.com/ezcater/`basename "$PWD"`/compare/`git describe --abbrev=0 --tags`...`git rev-parse HEAD`"
  if [ "$IS_MAC" ]; then
    echo $url | pbcopy
    open $url
  else
    echo $url | xclip -selection c
    xdg-open $url > /dev/null 2>&1
  fi
}

function delete_merged_branches() {
  for branch in `git branch --merged`; do
    if [ "$branch" = "master" ] || [ "$branch" = "main" ] || [ "$branch" = "*" ]; then
      echo "skipping branch: $branch"
    else
      git branch -d $branch
    fi
  done
}

function wireless_status() {
  watch -n 1 -t "awk 'NR==3 {print \"quality: \" (\$3/70)*100 \"%\nlevel: \" (\$4/100)*100 \" dB\"}''' /proc/net/wireless"
}

function la {
  cd "$(llama "$@")"
}
