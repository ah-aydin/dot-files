tmux has-session -t squat 2>/dev/null

if [ $? != 0 ]; then
    tmux new-session -d -s squat

    tmux rename-window -t squat:1 "nvim"
    tmux send-keys -t squat:1 "cd ~/Dev/squat/" C-m
    tmux send-keys -t squat:1 "clear" C-m
    tmux send-keys -t squat:1 "nvim" C-m M-a

    tmux new-window -t squat:2 -n "project"
    tmux send-keys -t squat:2 "cd ~/Dev/squat" C-m
    tmux send-keys -t squat:2 "clear" C-m
fi

tmux attach-session -t squat
