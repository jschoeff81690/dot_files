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

# Various Functions and Plugins
[ -f $HOME/bin/functions ] source $HOME/bin/functions  # Load my functions

# Better search history for zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#Aliases 

# Easier source and edit configs
alias zsource='source ~/.zshrc'
alias fsource='source ~/bin/functions'
alias bsource='source ~/.bshrc'
alias zedit='vim ~/.zshrc'
alias bedit='vim ~/.bshrc'
alias fedit='vim ~/bin/functions'
alias tedit='vim ~/.tmux.conf'
alias vedit='vim ~/.vimrc'

# Git 
alias gst='git status'
alias gd='git diff'

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

# Tmux Stuffs
alias tls='tmux ls'

# Better search history for zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#use custom prompt
source ~/bin/zsh_prompt
