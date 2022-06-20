# enable color support of ls
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

export CLICOLOR=1
export VISUAL='/usr/bin/vim'
export EDITOR=$VISUAL
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export TERMINAL=kitty

eval "$(starship init zsh)"

[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Appends every command to the history file once it is executed
setopt inc_append_history
# Reloads the history
setopt share_history
