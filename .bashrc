# ----------------
# Vim as default editor
export VISUAL=vi
export EDITOR="$VISUAL"

# cool lambda as prompt
export PS1="λ " 

# personal preference aliases
alias mkdir='mkdir -pv'
alias x='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

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
alias vmi=vim
alias pgp=php
alias ,.='./'

# dir shortcuts
alias s='cd ~/.ssh'
alias dl='cd ~/Downloads'
alias pix='cd ~/Pictures'
export HISTTIMEFORMAT="%m-%d-%y %T "

# history
export HISTFILESIZE=
export HISTSIZE=
export HISTFILE=~/.all
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

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
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'

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

# grep through history
hg ()
{
	# end if no args passed
  if [ $# -eq 0 ]; then
    return 1
  fi
	if [ $# -eq 1 ]; then
		history | grep "$1"
	fi
	if [ $# -eq 2 ]; then
		history | grep "$1" | grep "$2"
	fi
	if [ $# -eq 3 ]; then
		history | grep "$1" | grep "$2" | grep "$3"
	fi
}

space() {
  du -sh * | sort -hr | head -n 10
}

source ~/.envs
