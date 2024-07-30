[ -f ~/.dotfiles/aliasrc ] && . ~/.dotfiles/aliasrc
[ -f ~/.fzf.bash ] && . ~/.fzf.bash

[ -d ~/.local/bin ] && PATH=$PATH:$HOME/.local/bin

EDITOR="$PREFIX/bin/nvim"
PINK=#FF52A2
PURPLE=#DAB8F3
BG=#2a324a
FG=#93a4c3
MINT=#00FFAB
WHITE=#EDEDED

export PATH EDITOR
[ -f ~/.fzf.bash ] && export FZF_DEFAULT_OPTS="--ansi --color=bg+:$BG,fg+:$FG,gutter:-1,border:$PURPLE,hl:$MINT,hl+:$PINK,query:$PINK,pointer:$PINK,label:$WHITE,info:$MINT,spinner:$PURPLE,header:$PURPLE --border=rounded"
