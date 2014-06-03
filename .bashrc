# Alias
alias gst='git status'
alias gb='git branch'
alias gba='git branch -v'
alias st='subl'
alias wgd='watch -n5 "git diff"'
alias nodewatch='nodemon server --ignore node_modules/ --ignore bower_components/ --ignore vendor/'
alias gw='grunt browserify:teacher --watchify'

quickdump() {
  echo "$1" 
  #mongodump > backup.$(date +'%Y-%m-%d').json
}
# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u \w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# git bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

ulimit -n 10240
