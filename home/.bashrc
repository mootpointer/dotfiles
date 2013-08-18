[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
export PATH="/usr/local/bin:$PATH"
[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh
export PATH="/usr/local/share/python:$PATH:~/Projects/git-achievements:~/Projects/amazon/elastic-mapreduce:/usr/local/share/npm/bin"
alias git=git-achievements

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
