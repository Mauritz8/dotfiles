cp -rsv -t $HOME/ $(pwd)/.config $(pwd)/.local
chmod +x .local/bin/tmux-sessionizer
echo "bind -x '\"\C-f\":\"tmux-sessionizer\"'" >> ~/.bashrc
