# enable color support of ls
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

export CLICOLOR=1
[ -f /usr/bin/nvim ] && export VISUAL='/usr/bin/nvim'
[ -f /opt/homebrew/bin/nvim ] && export VISUAL='/opt/homebrew/bin/nvim'
export EDITOR=$VISUAL
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export TERMINAL=kitty
export PATH="$HOME/.local/bin:$PATH"

eval "$(starship init zsh)"

[ -f ~/.zsh-vi-mode.plugin.zsh ] && source ~/.zsh-vi-mode.plugin.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.local_aliases ] && source ~/.local_aliases
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Appends every command to the history file once it is executed
export HISTOCONTROL=ignoreups
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY_TIME
