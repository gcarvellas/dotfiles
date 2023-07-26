alias vi='vim'

## Makes alert when process before is done (use pipe)
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Miscellaneous

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias copy='xclip -sel copy'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls --color=auto -l'
alias ls='ls --color=auto'
alias icat="kitty +kitten icat"
alias ssh="kitty +kitten ssh"

sniff(){
	# sniffs in current directory
	# $1 is num of entries
	du -hs -- * .[^.]* | sort -rh | head -$1
}
