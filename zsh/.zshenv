EDITOR="$PREFIX/bin/nvim"
KEYTIMEOUT=1

# FZF CUSTOM COLORS
YELLOW=#FF8400
PINK=#FF52A2
PURPLE=#DAB8F3
BG=#2a324a
FG=#93a4c3
MINT=#00FFAB
WHITE=#EDEDED

# FZF DEFAULT OPTIONS
FZF_DEFAULT_OPTS="--ansi --color=bg+:$BG,fg+:$FG,gutter:-1,border:$PURPLE,hl:$MINT,hl+:$PINK,query:$PINK,pointer:$PINK,label:$WHITE,info:$MINT,spinner:$PURPLE,header:$PURPLE --border=rounded"

[ -d ~/.cargo ] && PATH=$PATH:$HOME/.cargo/bin
[ -d /usr/local/go/bin ] && PATH=$PATH:/usr/local/go/bin
[ -d ~/.local/bin ] && PATH=$PATH:$HOME/.local/bin
[ -d ~/.dotfiles/scripts/bin ] && PATH=$PATH:$HOME/.dotfiles/scripts/bin
[ -d ~/.language-servers/bin ] && PATH=$PATH:$HOME/.language-servers/bin

export PATH EDITOR KEYTIMEOUT FZF_DEFAULT_OPTS
