[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh

alias bedit='EDITOR=subl bundle open'
alias routes='rake routes | less'
alias clone='rake db:test:clone_structure'
alias restart='touch tmp/restart.txt'
alias rspec='bundle exec rspec -c'
alias migrate='rake db:migrate db:test:prepare db:schema:dump'
alias spec='bundle exec spec -c'
alias xspec='bundle exec spec -c -X'
alias rspec='bundle exec rspec -c'
alias last_migration="vim \`find db/migrate/ | tail -n 1\`"
alias idle_postgres="ps aux | grep postgres | grep idle | awk '{print \$2}' | xargs kill"
alias db_reset="rake db:drop db:create db:migrate db:test:prepare"
# Rails
function sc {
  if [ -x ./script/console ]; then
    bundle exec ./script/console $@
  else
    bundle exec rails console $@
  fi
}
alias console='sc'
function sd {
  if [ -x ./script/dbconsole ]; then
    bundle exec ./script/dbconsole $@
  else
    bundle exec rails dbconsole $@
  fi
}
function ss {
  if [ -x ./script/server ]; then
    bundle exec ./script/server $@
  else
    bundle exec rails server $@
  fi
}
