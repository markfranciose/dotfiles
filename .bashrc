# ----------------
# Vim as default editor
export VISUAL=vi
export EDITOR="$VISUAL"

# personal preference aliases
alias mkdir='mkdir -pv'
alias x='clear'
alias ..='cd ..'
alias ...='cd ../..'

# linux v. mac-y 
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	/usr/bin/setxkbmap -option "caps:swapescape"
	alias ll='ls -lvA --group-directories-first --color=auto'
	alias l='ls -l --group-directories-first --color=auto'
else
	alias ll='ls -lvAh'
	alias l='ls -l'
fi

# common typos
alias cd..='cd ..'
alias gut=git
alias bim=vim
alias vum=vim
alias cim=vim
alias pgp=php
alias ,.='./'

# dir shortcuts
alias s='cd ~/.ssh'

# program shortcuts
alias o='xdg-open'
alias gs='git status'
alias bi='bundle install'
alias be='bundle exec'
alias ber='bundle exec rake'
alias rsp='rails s --port=3500 -b=0.0.0.0'
alias rspd='nohup rails s --port=3500 -b=0.0.0.0 &'
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


