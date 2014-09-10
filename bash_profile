############################
# Don't edit this file
# Instead, put any customisations or personal bash preferences into the file ~/.local.bash
############################

export RAILS_ENV='development'
export RUBY_HEAP_MIN_SLOTS=500000
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=50000000
export RUBY_HEAP_FREE_MIN=4096

export CC=/opt/twitter/bin/gcc-4.2
export LC_CTYPE=en_US.UTF-8
export CLICOLOR=1
export LSCOLORS=gxGxFxdxbxDxDxBxBxExEx

export HISTCONTROL=erasedups
export HISTSIZE=100000
shopt -s histappend

## extras
[[ -s "${HOME}/.extras.bash" ]] && source "${HOME}/.extras.bash"

export PATH=/opt/twitter/bin:/opt/twitter/sbin:/usr/local/mysql/bin:/Users/psiddesha/bin:/Users/psiddesha/.twitools/src/twitter-utilities/sbt:/Users/psiddesha/.twitools/src/twitter-utilities/sbt11:/Users/psiddesha/.twitools/src/twitter-utilities/bin:"/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/":$PATH

if [ -e "/opt/twitter/opt/git/etc/bash_completion.d/git-completion.bash" ]; then
  if [ -e "/opt/twitter/opt/git/etc/bash_completion.d/git-prompt.sh" ]; then
    # Both of these files are required.
    source "/opt/twitter/opt/git/etc/bash_completion.d/git-completion.bash"
    source "/opt/twitter/opt/git/etc/bash_completion.d/git-prompt.sh"
    export PS1='[\h \[\033[0;36m\]\W\[\033[0m\]$(__git_ps1 " \[\033[1;32m\](%s)\[\033[0m\]")]\$ '
  fi
else
  export PS1='[\h \[\033[0;36m\]\W\[\033[0m\]]\$ '
fi

source ${HOME}/.extras.bash

## rvm
[[ -s "/opt/twitter/rvm/scripts/rvm" ]] && source "/opt/twitter/rvm/scripts/rvm"


## nvm
[[ -e "/opt/twitter/nvm/nvm.sh" ]] && source "/opt/twitter/nvm/nvm.sh"
[[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"

############################
# Don't edit this file
# Instead, put any customisations or personal bash preferences into the file ~/.local.bash
############################

[[ -s ${HOME}/.local.bash ]] && source ${HOME}/.local.bash

# dottools: add distribution binary directories to PATH
if [[ -r $HOME/.tools-cache/setup-dottools-path.sh ]]; then
  source $HOME/.tools-cache/setup-dottools-path.sh
fi
