source ~/.bashrc
source ~/.shell_prompt.sh

export EDITOR='nvim -c "au VimLeave * !open -a iTerm"'

## Let's have a nice long history
HISTFILESIZE=1000000000
HISTSIZE=1000000
# without any dups
HISTCONTROL=ignoredups

## We want THE COLOURS!
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export GREP_OPTIONS='--color=auto'

##Aliases
alias l="ls -laTGih"
alias gp="ps -ef | grep"
alias be="bundle exec"

# Compress the cd, ls -l series of commands.
alias lc="cl"
function cl () {
   if [ $# = 0 ]; then
      cd && l
   else
      cd "$*" && l
   fi
}

# Make a directory, cd into and tell us that we moved there.
function mc() {
  mkdir -p "$@" && cd "$*" && pwd
}

# Push ls into less if we're in a big dir.

ll () {
    CLICOLOR_FORCE=1 l $* | less -r
}


##Prompt Stuff##
# function __git_dirty {
#   git diff --quiet HEAD &>/dev/null 
#   [ $? == 1 ] && echo "!"
# }

# function __git_branch {
#   __git_ps1 " %s"
# }

# function __my_rvm_ruby_version {
#   local gemset=$(echo $GEM_HOME | awk -F'@' '{print $2}')
#   [ "$gemset" != "" ] && gemset="@$gemset"
#   local version=$(echo $MY_RUBY_HOME | awk -F'-' '{print $2}')
#   [ "$version" == "1.8.7" ] && version=""
#   local full="$version$gemset"
#   [ "$full" != "" ] && echo "$full "
# }

# bash_prompt() {
#   local NONE="\[\033[0m\]"    # unsets color to term's fg color

#   # regular colors
#   local K="\[\033[0;30m\]"    # black
#   local R="\[\033[0;31m\]"    # red
#   local G="\[\033[0;32m\]"    # green
#   local Y="\[\033[0;33m\]"    # yellow
#   local B="\[\033[0;34m\]"    # blue
#   local M="\[\033[0;35m\]"    # magenta
#   local C="\[\033[0;36m\]"    # cyan
#   local W="\[\033[0;37m\]"    # white

#   # emphasized (bolded) colors
#   local EMK="\[\033[1;30m\]"
#   local EMR="\[\033[1;31m\]"
#   local EMG="\[\033[1;32m\]"
#   local EMY="\[\033[1;33m\]"
#   local EMB="\[\033[1;34m\]"
#   local EMM="\[\033[1;35m\]"
#   local EMC="\[\033[1;36m\]"
#   local EMW="\[\033[1;37m\]"

#   # background colors
#   local BGK="\[\033[40m\]"
#   local BGR="\[\033[41m\]"
#   local BGG="\[\033[42m\]"
#   local BGY="\[\033[43m\]"
#   local BGB="\[\033[44m\]"
#   local BGM="\[\033[45m\]"
#   local BGC="\[\033[46m\]"
#   local BGW="\[\033[47m\]"

#   local UC=$W                 # user's color
#   [ $UID -eq "0" ] && UC=$R   # root's color

#   PS1="$B\$(__my_rvm_ruby_version)$Y\h$W:$EMY\w$EMW\$(__git_branch)$EMY\$(__git_dirty)${NONE} $ "
# }

# bash_prompt
# unset bash_prompt

# function _update_ps1()
# {
#    export PS1="$(~/powerline-shell.py $?)"
# }

# export PROMPT_COMMAND="_update_ps1"

  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
. "$HOME/.cargo/env"
