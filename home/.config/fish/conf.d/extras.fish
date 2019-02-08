. "$HOME/.homesick/repos/homeshick/homeshick.fish"
test -s "$HOME/.kiex/scripts/kiex.fish"; and source "$HOME/.kiex/scripts/kiex.fish"

set -x EDITOR '/usr/local/opt/emacs-mac/bin/emacsclient -c'

set -x PATH /Users/harvand/.cargo/bin $PATH