#Panda's Rails bash aliases for fun and best work.
#created by pandalowry(https://github.com/pandalowry)
#based on file from zsh's config framework https://github.com/robbyrussell/oh-my-zsh

##### ea - editing aliases
alias ea='vim ~/.bash_aliases; source ~/.bash_aliases && source $HOME/.bash_aliases && echo "aliases sourced [ok]."'


#functions-wrappers for work. 
#I Don't put script/rails runner for legacy rails version!!!
# Change it, if you want, as is:

#....if.....
#elif [ -e "script/rails" ]; then
# 	ruby script/rails $@
# elif [ -e "script/server" ]; then
# 	ruby script/$@	



#use binstubs rails in bin/ firstly
function _rails_command {
	if [ -e "bin/rails" ] ; then
		bin/rails $@	
	else
		rails $@
	fi
}  

function _rake_command {
	if [ -e "bin/rake" ] ; then
		bin/rake $@
	else
		rake $@
	fi
} 

#apache alias
alias rsap='sudo service apache2 restart'


#git alias
alias gpom='git push origin master'

#laravel alias
alias lperm='sudo chgrp -R www-data storage bootstrap/cache && sudo chmod 777 -R bootstrap/cache/ storage/'

# wrap 2 native commands
alias rails='_rails_command'
alias rake='_rake_command'

alias restartpassenger='touch tmp/restart.txt' #restart passenger server. Create tmp/ in you production clone-from-git apps!

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

# Rake aliases
alias rdm='rake db:migrate'
alias rdms='rake db:migrate:status'
alias rdr='rake db:rollback'
alias rdc='rake db:create'
alias rds='rake db:seed'
alias rdd='rake db:drop'
alias rdrs='rake db:reset'
alias rdtc='rake db:test:clone'
alias rdtp='rake db:test:prepare'
alias rdmtc='rake db:migrate db:test:clone'
alias rlc='rake log:clear'
alias rn='rake notes'
alias rr='rake routes'
alias rrg='rake routes | grep'
alias rt='rake test'
alias rmd='rake middleware'
alias rsts='rake stats'
#
