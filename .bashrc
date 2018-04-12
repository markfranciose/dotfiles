# ----------------
# personal preference aliases
alias mkdir='mkdir -pv'
alias ll='ls -lvA --group-directories-first --color=auto'
alias l='ls -l --group-directories-first --color=auto'
alias x='clear'
alias ..='cd ..'
alias ...='cd ../..'

# common typos
alias cd..='cd ..'
alias gut=git
alias bim=vim
alias cim=vim

# dir shortcuts
alias s=cd ~/.ssh

# program shortcuts
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


