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
PROMPT=[%F{magenta}%n%F{yellow}"@"%F{red}%M%F{white}":"%F{cyan}%1~%F{white}"]$ "

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

# history
HISTSIZE=50000
SAVEHIST=50000
HISTFILE=~/.zshhistory

setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# hcloud completion
if [ -f ~/.zsh/hcloud ]; then
    source ~/.zsh/hcloud
    # hetzner autocomplete
    fpath+=(~/.config/hcloud/completion/zsh)
fi

# opam configuration
test -r /home/sam/.opam/opam-init/init.zsh && . /home/sam/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
