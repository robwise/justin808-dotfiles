alias fsp="foreman start -f Procfile.dev"
alias sb="bundle exec spring rails console --sandbox"
alias binstub="bundle exec spring binstub --all"
alias beg="bundle exec guard --clear"
alias ber='bundle exec rake'

# This allows the use of [] without escapes
alias rake='noglob rake'

export PROCESSES_TO_QUIT='puma rake sidekiq spring rails$ ruby-debug phantomjs zeus passenger guard resque "node server.js" ruby$ node foreman'

pgr() {
    echo "Finding processes in list: $PROCESSES_TO_QUIT"
    echo $PROCESSES_TO_QUIT | xargs -n 1 pgrep -l
}

pgk() {
    echo "Killing processes in list: $PROCESSES_TO_QUIT"
    echo $PROCESSES_TO_QUIT | xargs -n 1 pkill -l
}


pgkk() {
    echo "Killing -9 processes in list: $PROCESSES_TO_QUIT"
    echo "Also removing $ZEUS_SOCK if existing"
    echo $PROCESSES_TO_QUIT | xargs -n 1 pkill -9 -l
}

rspec-say() {
    rspec $@
    say "r spec test completed"
}

