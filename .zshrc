# zshrc

case $- in # check shell options
    *i*) ;; # interactive shell
      *) return;; # don't do anything
esac

autoload -U compinit
compinit
SHELL_CONFIG="$HOME/.config/shell" # general shell configs
[ -f "$SHELL_CONFIG/aliases.sh" ] && . "$SHELL_CONFIG/aliases.sh"
# Set up fzf key bindings and fuzzy completion
# source <(fzf --zsh)

PS1="%n@%m %1~ %# "
