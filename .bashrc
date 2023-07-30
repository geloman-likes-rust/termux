set -o vi
export EDITOR="nvim"
[ -f ~/.bash_aliases ] && . "$HOME"/.bash_aliases
[ -d ~/.local/bin ] && PATH=$PATH:$HOME/.local/bin && export PATH

## bind (ctrl-p) --> tmux-sessionizer
#-----------------------------------------------------
bind -x '"\C-p": tmux-sessionizer'

## bind (ctrl-b) --> randbg
#-----------------------------------------------------
bind -x '"\C-b": randbg'

## bind (ctrl-f) --> randbg
#-----------------------------------------------------
bind -x '"\C-f": fvi'

## bind (ctrl-o) --> fast-cd
#-----------------------------------------------------
fast_cd() {
  selected=$(fast-cd); [[ -z $selected ]] || cd "$selected"
}
bind '"\C-o": "fast_cd; clear\n"'
