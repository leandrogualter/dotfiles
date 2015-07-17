# Imports
. ./.bash_imports/awshelper
. ./.bash_imports/git-prompt

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
# Shows an * if repo is dirty
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"

# Prompt definitions
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\][\[$(tput setaf 1)\]\u\[$(tput setaf 4)\]@\[$(tput setaf 1)\]\h \[$(tput setaf 2)\]\W\[$(tput setaf 4)\] \[$(tput sgr0)\]\`if [ \$? = 0 ]; then echo \[\e[33m\]^_^\[\e[0m\]; else echo \[\e[31m\]O_o\[\e[0m\]; fi\`\[$(tput bold)\]\[$(tput setaf 4)\]]\`echo $(__git_ps1 "\[$(tput setaf 4)\][\[$(tput setaf 1)\]%s\[$(tput setaf 4)\]]");\`\$\[$(tput sgr0)\] "

# Some colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# rbenv stuff
export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# include .bashrc if it exists
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# Set VIM as the default editor
export EDITOR=vim

# Starting up ssh-agent
eval `ssh-agent -s`

# Adds ssh keys
ssh-add ~/.ssh/github
ssh-add ~/.ssh/apt-stash
