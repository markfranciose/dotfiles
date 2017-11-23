# ----------------
# personal preference aliases

alias mkdir='mkdir -pv'
alias ls='ls -lvA --group-directories-first --color=auto| less'
alias cl='clear'

# common typos
alias cd..='cd ..'
alias gut=git


# open pwd in windows explorer
alias e="start ."

# show time
alias now='date +"%T"'

# ----------------
# handy functions

# make a dir and change pwd to that dir 
mcd ()
{
	mkdir -p -- "$1" &&
		cd -P -- "$1"
}


