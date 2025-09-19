# .zprofile

[ -f $HOME/.config/shell/profile.sh ] && . $HOME/.config/shell/profile.sh

kernel_name=$(uname -s)
case "$kernel_name" in
  Darwin*|Linux*) 
    [ -f $HOME/.config/shell/unixprofile.sh ] && . $HOME/.config/shell/unixprofile.sh
  ;;
  MINGW*|CYGWIN*) 
    [ -f $HOME/.config/shell/winprofile.sh ] && . $HOME/.config/shell/winprofile.sh
  ;;
  *) echo "Cannot detect OS: $kernel_name"
  ;;
esac

