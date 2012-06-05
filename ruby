alias bedit='EDITOR=/Applications/TextMate.app/Contents/MacOS/TextMate bundle open'
alias console='ruby script/rails console'
alias routes='rake routes | less'
alias clone='rake db:test:clone_structure'
alias restart='touch tmp/restart.txt'
alias migrate='rake db:migrate db:test:prepare db:schema:dump'
alias rtest="ruby -I\"lib:test\" `echo \`gem which rake\` | sed s/.rb$// | awk '{print $1\"/rake_test_loader.rb\"}'`"
alias spec='bundle exec spec -cb --drb'
alias rspec="rspec -cb"
alias last_migration="vim \`find db/migrate/ | tail -n 1\`"
alias idle_postgres="ps aux | grep postgres | grep idle | awk '{print \$2}' | xargs kill"
