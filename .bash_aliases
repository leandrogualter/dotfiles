if [ `uname` = 'Darwin' ]; then
  alias ls='ls -GFh'
else
  alias ls='ls --color=auto -GFh'
fi
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias bruby='bundle exec ruby'
alias brspec='bundle exec rspec'
alias brake='bundle exec rake'
alias bil='bundle install'

alias g="git"
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias ggrep='git grep'

alias vg=vagrant

alias create_alias='vim ~/.bash_aliases;source ~/.bash_aliases'

alias projects='cd ~/projects'
alias nebula='cd ~/projects/nebula'
alias tools_project='cd ~/projects/tools_project'
