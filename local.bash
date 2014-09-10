title=`whoami`@`hostname -f`
echo -n -e "\033]0;$name\007"

function parse_git_branch_and_add_brackets {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}

# Expand input strings and pass them thru tr to translate spaces into commas.
# 
# This allows simplifying capistrano invocations.  e.g., instead of this:
#   HOSTS=`echo web-pod{2..5}-app{1..6}.snc1 | tr ' ' ','`
# we can now do this:
#   HOSTS=`commify web-pod{2..5}-app{1..6}.snc1`
function commify() {
  echo "$*" | tr ' ' ','
}

PS1='[$title $PWD$(parse_git_branch_and_add_brackets)]$ '

# aliases
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias l="ls -al"
alias lp="ls -p"
alias h=history
alias kp="ps auxwww"
alias clip="tr -d '\n' | pbcopy"
alias gd="git diff"
alias gdom="git diff origin/master"
alias sbp="source ~/.bash_profile"
alias gpp="git pull --rebase && git push"
alias gdno="git diff origin/master --name-only"

#HISTFILESIZE=1000000000 HISTSIZE=1000000

# Bash history help: http://mywiki.wooledge.org/BashFAQ/088
# Other intersting options: ignorespace, ignoredups, ignoreboth
export HISTCONTROL=erasedups
# make history file size unlimited
unset HISTFILESIZE
# limit the number of cmds stored in memory
export HISTSIZE=10000
# write out history after every cmd is executed
export PROMPT_COMMAND="history -a"
# have each shell append to the history instead of overwrite it
shopt -s histappend

. "$HOME/.bashrc"

set HADOOP_HOME=/usr/local/lib/hadoop
export AWS_CREDENTIAL_FILE=~/.aws/aws.paramesh.creds
export PATH=/usr/local/lib/hadoop/bin/:~/work/play-2.2.0/:$PATH
export PATH="$HOME/bin:$PATH:~/.tools-cache/home/storm/storm-release/bin:~/.tools-cache/home/klaplante/bin:~/.tools-cache/home/klaplante/bin/capesospy/bin/capesospy"
export PATH="/Users/psiddesha/Python/CPython-2.6.9/bin:/Users/psiddesha/Python/CPython-2.7.8/bin:/Users/psiddesha/Python/CPython-3.3.5/bin:/Users/psiddesha/Python/CPython-3.4.1/bin:~/.tools-cache/home/heron/heron-cli/bin/:$PATH"
export M2_HOME=/usr/share/maven
export MAVEN_OPTS='-Xmx1024m -XX:MaxPermSize=512m'
export GREP_COLOR='1;37;41'
export JAVA_LIBRARY_PATH=$JAVA_LIBRARY_PATH:/opt/twitter/lib/
alias grep='grep --color=auto'

alias pbsb='./pants goal invalidate binary src/scala/com/twitter/ads/engagement_counter/job:scalding-batch-deploy -vx --binary-deployjar'
alias pbip='./pants goal invalidate idea tests/scala/com/twitter/ads/engagement_counter/ --idea-open --idea-project-name=engagement_counter -vx'
alias sname='echo $STY'
alias uberjar='./pants goal binary -vx --binary-deployjar'
alias freshjar='./pants goal invalidate binary -vx --binary-deployjar'
alias dwrev='sudo -u ads hadoop --config /etc/hadoop/hadoop-conf-dwrev-smf1/'
alias scrpl='./scalding/scripts/scald-repl.sh --local --jars scalding-shell.jar'
#source ~/workspace/science/ads/scripts/bash_aliases.sh
#source ~/bin/git-completion.bash
ulimit -n 4096
