# dotfiles
This repo contains everything I need when I set up a new Linux system,
including config files for Neovim, Tmux, and Bash.

## Setup
The setup is pretty straightforward.
Simply symlink all files to the home directory:
```bash
cp -rsvf -t $HOME/ $(pwd)/.config $(pwd)/.local $(pwd)/.bashrc
```
