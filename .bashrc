# ----------------
# personal preference aliases
alias mkdir='mkdir -pv'
alias ll='ls -lvA --group-directories-first --color=auto'
alias l='ls -l --group-directories-first --color=auto'
alias x='clear'
alias ..=cd ..
alias ...='cd ../..'

# common typos
alias cd..='cd ..'
alias gut=git

# dir shortcuts
alias s=cd ~/.ssh

# program shortcuts
alias be='bundle exec'
alias ber='bundle exec rake'
alias pa='php artisan'
alias pas='php artisan serve'


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


