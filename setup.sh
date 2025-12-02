#!/usr/bin/env bash

cp -rsv -t $HOME/ $(pwd)/.config $(pwd)/.local
chmod +x .local/bin/tmux-sessionizer

cat >> ~/.bashrc << 'EOF'
bind -x '"\C-y":"tmux-sessionizer"'

export EDITOR=nvim

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gl='git log'
alias gb='git branch'
alias gd='git diff'
EOF
