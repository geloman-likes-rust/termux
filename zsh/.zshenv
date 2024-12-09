EDITOR="$PREFIX/bin/nvim"
KEYTIMEOUT=1
HISTSIZE=1000
SAVEHIST=1000
HISTFILE="$HOME/.zsh_history"
FZF_CTRL_R_OPTS="--border-label ' command history '"
FZF_CTRL_T_OPTS="--border-label ' relative files '"
FZF_ALT_C_OPTS="--border-label ' relative directories '"
FZF_DEFAULT_OPTS_FILE="$HOME/.dotfiles/fzf/.fzfrc"

[ -d ~/.cargo ] && PATH=$PATH:$HOME/.cargo/bin
[ -d /usr/local/go/bin ] && PATH=$PATH:/usr/local/go/bin
[ -d ~/.local/bin ] && PATH=$PATH:$HOME/.local/bin
[ -d ~/.dotfiles/scripts/bin ] && PATH=$PATH:$HOME/.dotfiles/scripts/bin
[ -d ~/.language-servers/bin ] && PATH=$PATH:$HOME/.language-servers/bin

export PATH EDITOR KEYTIMEOUT FZF_DEFAULT_OPTS_FILE
