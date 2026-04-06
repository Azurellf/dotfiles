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
source <(fzf --zsh)

# Set up for nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && . "$HOMEBREW_PREFIX/opt/nvm/nvm.sh"                                       # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && . "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

export PATH="$HOME/.local/bin:$PATH"

PS1="%n@%m %1~ %# "
