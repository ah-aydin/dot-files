export ZSH=~/.oh-my-zsh

ZSH_THEME="pixegami-agnoster"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Java
export JDTLS_HOME=/home/hamza/Dev/tools/jdtls/

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
alias proj_squat="source ~/Dev/scripts/squat.sh"
