alias ga="git add"
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
alias gch="git checkout"
alias gchb="git checkout -b"
