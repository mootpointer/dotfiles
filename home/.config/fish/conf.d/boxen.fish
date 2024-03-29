#!/usr/bin/env fish

# Automatically generated by Boxen. Don't edit directly. This file
# sets up paths and basic environment for the Boxen dev environment,
# and is intended to be sourced in your shell profile.

# set +e
# set +u

###### PARSE ERR: for f in $BOXEN_HOME/env.d/*.sh ; do
###### PARSE ERR:   if [ -f $f ] ; then
###### PARSE ERR:     source $f
###### PARSE ERR:   fi
###### PARSE ERR: done

# Boxen is active.

###### PARSE ERR: if [ -d "$BOXEN_HOME/repo/.git" ]; then
###### PARSE ERR: else
###### PARSE ERR:   echo "Boxen could not load properly!"
###### PARSE ERR: fi
# Expose basic setup paths. BOXEN_HOME is already exported at the top level.


# Add homebrew'd stuff to the path.

# set -x PATH $HOMEBREW_ROOT/bin $HOMEBREW_ROOT/sbin $PATH

# Add homebrew'd stuff to the manpath.

#set -x MANPATH $HOMEBREW_ROOT/share/man $MANPATH

# Allow bundler to use all the cores for parallel installation
set -x BUNDLE_JOBS 8


# Make all the fancy `hub` shortcuts available via `git`.
eval (/opt/homebrew/bin/hub alias -s)
