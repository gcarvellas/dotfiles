alias vi='nvim'

## Makes alert when process before is done (use pipe)
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Miscellaneous

alias doas="sudo -E -s "
alias sudo="sudo -E -s "
alias copy='wl-copy '
alias paste="wl-paste "
alias l='ls -CF '
alias la='ls -A '
alias ll='ls -alF --color=auto '
alias docker-compose="docker-compose "

sniff(){
	# sniffs in current directory
	# $1 is num of entries
    doas du -hs -- * .[^.]* | sort -rh | head -$1
}

alias dcu='docker-compose up'
