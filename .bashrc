PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=200000
shopt -s histappend
PROMPT_COMMAND='history -a; history -c; history -r;'

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gl='git log'
alias gb='git branch'
alias gd='git diff'

export EDITOR=nvim
export PATH="$PATH:$HOME/.local/bin"

bind -x '"\C-y":"open-project"'
