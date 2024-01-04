alias ga="git add "
alias gc="git commit"
function gcm() {
  git commit -m "$*"
}
alias gs="git status"
alias gp="git push"
alias gpup='git push --set-upstream origin "$(git rev-parse --abbrev-ref HEAD)"'
alias gf="git fetch"
alias gl="git pull"
alias gb="git branch"
function gch() {
    local branch_name="$1"
    if git rev-parse --quiet --verify "$branch_name" > /dev/null; then
        git checkout "$branch_name"
    else
        git checkout -b "$branch_name"
    fi
}
