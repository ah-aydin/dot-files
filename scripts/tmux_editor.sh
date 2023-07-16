if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <session_name> <window_directory>"
    exit 1
fi

session_name="$1"
window_directory="$2"

tmux has-session -t "$session_name" 2>/dev/null

if [ $? != 0 ]; then
    tmux new-session -d -s "$session_name"

    tmux rename-window -t "$session_name":1 "nvim"
    tmux send-keys -t "$session_name":1 "$window_directory" C-m
    tmux send-keys -t "$session_name":1 "clear" C-m
    tmux send-keys -t "$session_name":1 "nvim" C-m M-a

    tmux new-window -t "$session_name":2 -n "project"
    tmux send-keys -t "$session_name":2 "$window_directory" C-m
    tmux send-keys -t "$session_name":2 "clear" C-m
fi

tmux attach-session -t "$session_name"
