# .config/shell/unixprofile.sh

# Proxy
export HTTPS_PROXY=http://127.0.0.1:7897
export HTTP_PROXY=http://127.0.0.1:7897
export ALL_PROXY=socks5://127.0.0.1:7897

# Middleware
export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"

# Java
export PATH="/opt/jdk-21.0.7.jdk/Contents/Home/bin:$PATH"

# Added by Toolbox App
export PATH="$PATH:/Users/lee/Library/Application Support/JetBrains/Toolbox/scripts"

eval "$(/opt/homebrew/bin/brew shellenv)"
