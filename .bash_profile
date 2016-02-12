export EDITOR=vim
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

## Tell `ls` to be colourful
export CLICOLOR=1

## Tell `grep` to highlight matches
export GREP_OPTIONS='--color=auto'

# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"
export PATH=/opt/local/bin:/opt/local/sbin:${PATH}

# Aliases

## I'm serious
alias fucking=sudo
alias please=sudo
alias npmsucks='rm -rvf node_modules/ && npm install'

## Tools
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

## Shortcuts
alias ll='ls -lah --color --group-directories-first'
alias editgit='atom ~/.gitconfig'
alias editbash='atom ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "Done!"'
alias vi=vim

## Git commands
alias log='git log'
alias diff='git diff'
alias branch='git branch'
alias st='git status'
alias fetch='git fetch'
alias push='git push origin head'
alias pull='git pull'
alias fp='fetch && pull'
alias gmm='git merge master'
alias gmghp='git merge gh-pages'
alias recent='git for-each-ref --sort=-committerdate refs/heads/'
alias branch_new="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)'"

## Mobile iOS testing
alias ios='open /Applications/Xcode.app/Contents/Applications/iPhone\ Simulator.app'
