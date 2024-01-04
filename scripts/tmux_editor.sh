function topen() {
    local session_name="$1"

    # Check if the Tmux session exists
    if tmux has-session -t "$session_name" 2>/dev/null; then
        # If the session exists, attach to it
        tmux attach-session -t "$session_name"
    else
        # If the session doesn't exist, create a new one
        tmux new-session -s "$session_name"
    fi
}

alias tkill="tmux kill-session -t"
