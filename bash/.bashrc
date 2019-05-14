alias be='bundle exec'
alias bu='bundle update'

alias codesign='codesign -dvvv'


alias mysql_start='mysql.server start'
alias postgres_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias postgres_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

alias redis_start='redis-server /usr/local/etc/redis.conf'

alias repo='cd ~/Documents/Repo'

alias rspec='rspec --color'

alias safari_delete_off='defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool NO'
alias safari_delete_on='defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool YES'

alias ag='ag -S'
alias shag='ag -S --depth 1'
alias rag='ag -S --ruby'

alias strip='tr -d '\''\n'\'''

alias timestamp='date "+%Y%m%d%H%M%S"'
alias pbcp='pbcopy'
alias pwdcp='echo -n $(pwd) | pbcopy'
alias ts='timestamp'
alias tscp='ts|strip|pbcp'

alias tf='terraform'
alias tg='terragrunt'

# https://acdcjunior.github.io/git-get-first-line-commit-message-shell.html
alias g1='git log --oneline --format=%B -n 1 HEAD | head -n 1'

function commit_fortune { curl -s "https://whatthecommit.com"| tr -d "\n\r" | perl -pe 's/.*<div id="content"><p>(.*)(?:<\/p><p class="permalink">).*/\1/';}
function gcf { git commit -am "$(commit_fortune)";}
export -f commit_fortune
export -f gcf

## https://github.com/postmodern/chruby
#source /usr/local/share/chruby/chruby.sh
#source /usr/local/share/chruby/auto.sh
# now in: /etc/bashrc


#function rubies { echo ${RUBIES[@]};}
# https://github.com/postmodern/chruby/issues/315#issuecomment-71931489
#$ env
#HOME=/home/www/myapp
#$ echo ${RUBIES[@]}
#/home/www/myapp/.rubies/ruby-2.2.0

function reload { source ~/.bashrc;}


source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
