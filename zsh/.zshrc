source $HOME/.aliases

export VISUAL='/usr/bin/vim'
export EDITOR=$VISUAL
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export TERMINAL=kitty

eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
