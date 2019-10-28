# Created by newuser for 5.7.1

# aliases
test -f ~/.bash_aliases && source ~/.bash_aliases

# pywal colours
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

# run ssh-agent
eval $(ssh-agent) > /dev/null

# enable colour
autoload -U colors && colors

# set prompt
PROMPT=%F{magenta}%n%F{yellow}"@"%F{magenta}%M%F{white}":"%F{cyan}%1~%F{white}"$ "

# history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# vim keys for autocomplete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# vim mode lol
bindkey -v

# edit line in vim with ctrl e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# open htop with ctrl h
run_htop () { htop }
zle -N run_htop
bindkey '^h' run_htop

# run tmux only in x
#	if [[ $DISPLAY ]]; then
#	    # If not running interactively, do not do anything
#	    [[ $- != *i* ]] && return
#      [[ -z "$TMUX" ]] && exec tmux
#	fi
