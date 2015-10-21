# zshrc

export LC_ALL=en_US.utf-8 
export LANG="$LC_ALL" 
export GREP_OPTIONS='--color=auto'
autoload -U compinit
#compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

# history
setopt APPEND_HISTORY
# for sharing history between zsh processes
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

## never ever beep ever
setopt NO_BEEP

## automatically decide when to page a list of completions
LISTMAX=0

## disable mail checking
MAILCHECK=0

# These should work with both zsh and bash
 
#various functions
source $HOME/bin/functions  # Load my functions

#Aliases 
#
#workspace stuff
# Git 
alias gst='git status'

#ls stuff
alias sl=ls
alias ll='ls -alh'
alias lr='ls -alrth'
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls -G'
alias lsa='ls -lah'
alias gl='git pull'
alias glg='git log --stat --color'
alias glgg='git log --graph --color'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glgp='git log --stat --color -p'
alias glo='git log --oneline --decorate --color'
#use custom prompt
source ~/bin/.zshprompt
