export PATH="/usr/local/bin:$PATH"
[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
