##### ea - editing aliases
alias ea='vim ~/.bash_aliases; source ~/.bash_aliases && source $HOME/.bash_aliases && echo "aliases sourced [ok]."'

alias rsap='sudo service apache2 restart'

alias gpom='git push origin master'

alias gphm='git push heroku master'

alias devlog='tail -f log/development.log'
alias prodlog='tail -f log/production.log'
alias testlog='tail -f log/test.log'

# Rails aliases
alias rs='rails server'

# Other good shell-tricks
alias cfnc='grep ^[^#]' #view config file without comments

alias gbb="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) | %(authorname) | (%(color:green)%(committerdate:relative)%(color:reset))|%(contents:subject) ' | column -t -s '|'" #pretty-view git branch
