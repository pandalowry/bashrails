##### ea - editing aliases
alias ea='vim ~/.bash_aliases; source ~/.bash_aliases && source $HOME/.bash_aliases && echo "aliases sourced [ok]."'

alias rsap='sudo service apache2 restart'

alias gpom='git push origin master'

alias gphm='git push heroku master'

#use binstubs rails in bin/ firstly
function _rails_command {
	if [ -e "bin/rails" ] ; then
		bin/rails $@	
	else
		rails $@
	fi
}  

alias rails='_rails_command'

# View app log
alias devlog='tail -f log/development.log'
alias prodlog='tail -f log/production.log'
alias testlog='tail -f log/test.log'
#

# Rails aliases
alias rc='rails console'
alias rd='rails destroy'
alias rdb='rails dbconsole'
alias rg='rails generate'
alias rgm='rails generate migration'
alias rp='rails plugin'
alias ru='rails runner'
alias rs='rails server'
alias rsd='rails server --debugger'
alias rsp='rails server --port'
#

