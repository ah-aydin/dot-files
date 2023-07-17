export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="xiong-chiamiov"

plugins=(git)

source $ZSH/oh-my-zsh.sh

bindkey -v

plugins=(
  git
  rust
  vi-mode
)

# Path
export PATH="/home/hamza/.local/share/bob/nvim-bin:$PATH"

# aya-rs
alias aya_gen="cargo generate https://github.com/aya-rs/aya-template"
alias aya_compile_ebpf="cargo xtask build-ebpf"
alias aya_run="RUST_LOG=info cargo xtask run"

# Minikube
alias kubectl="minikube kubectl --"

# Nvim
alias vim=nvim

# Tmux
alias tmux_kill="tmux kill-session -t"
alias tmux_open="tmux attach -t"
alias proj_squat="source ~/scripts/squat.sh"
