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

# Push dirs to stack with cd 
setopt AUTO_PUSHD              # push directories on every cd
setopt pushd_ignore_dups       # dont have a bunch of the same dirs on stack

######################### history options ############################
setopt EXTENDED_HISTORY        # store time in history
setopt HIST_EXPIRE_DUPS_FIRST  # unique events are more usefull to me
setopt HIST_VERIFY             # Make those history commands nice
setopt INC_APPEND_HISTORY      # immediatly insert history into history file
setopt SHARE_HISTORY
HISTSIZE=16000                 # spots for duplicates/uniques
SAVEHIST=15000                 # unique events guarenteed
HISTFILE=~/.history
setopt histignoredups          # ignore duplicates of the previous event


## never ever beep ever
setopt NO_BEEP

## automatically decide when to page a list of completions
LISTMAX=0

## disable mail checking
MAILCHECK=0

################################
# Various Functions and Plugins
################################
[ -f $HOME/bin/functions ] && source $HOME/bin/functions  # Load functions

[ -f $HOME/bin/aliases ] && source $HOME/bin/aliases  # Load aliases

# Better search history for zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# K plugin
[ -f ~/bin/.k/k.sh ] && source ~/bin/.k/k.sh && alias ll=k       # Load K

# Use custom prompt
source ~/bin/zsh_prompt
