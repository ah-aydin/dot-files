function tcreate() {
  local session_name
  session_name=$(basename "$PWD")
  if [ -z "$session_name" ]; then
    echo "Error: Could not determine the session name from the current directory."
    return 1
  fi
  tmux new-session -s "$session_name"
}

alias topen="tmux attach-session -t"
alias tkill="tmux kill-session -t"
alias tmuxls="tmux list-sessions"
