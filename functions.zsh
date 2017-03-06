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
  open "https://github.com/ezcater/ez-rails/compare/`git describe --abbrev=0 --tags`...master"
}
