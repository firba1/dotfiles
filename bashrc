alias ls="ls --color=auto"

tmx() {
    tmux attach -t $1 || tmux new -s $1
}

function mvim() {
    vim -p `git status --porcelain | sed -ne 's/^ M //p'`
}

