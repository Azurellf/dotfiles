# .zprofile

kernel_name=$(uname -s)
case "$kernel_name" in
  Darwin*|Linux*) 
    [ -f $HOME/.config/shell/profile.sh ] && . $HOME/.config/shell/profile.sh
  ;;
  MINGW*|CYGWIN*) 
    [ -f $HOME/.config/shell/profile.sh ] && . $HOME/.config/shell/winprofile.sh
  ;;
  *) echo "Cannot detect OS: $kernel_name"
  ;;
esac

[ -f $HOME/.config/shell/profile.sh ] && . $HOME/.config/shell/profile.sh
# Added by Toolbox App
export PATH="$PATH:/Users/lee/Library/Application Support/JetBrains/Toolbox/scripts"


eval "$(/opt/homebrew/bin/brew shellenv)"
