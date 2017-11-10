# ----------------
# personal preference aliases

alias mkdir='mkdir -pv'
alias ls='ls -lvA --group-directories-first | less'
alias cl='clear'

# open pwd in windows explorer
alias e="start ."

# ----------------
# handy functions

# make a dir and change pwd to that dir 
mcd ()
{
	mkdir -p -- "$1" &&
		cd -P -- "$1"
}


