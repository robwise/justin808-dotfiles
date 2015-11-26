# Generic Utilities

# Change working directory to the top-most Finder window location
function cdf() { # short for `cdfinder`
    cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')";
}

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

funcs() {
    # The functions are stored in an associative array functions, so to get only the
    # funtion names (k flag for keys) in alphabetical order (o flag for ordering)
    # then use which <func_name> to see the definition of that function
    print -l ${(ok)functions}
}

tz_pst() {
  tz=`sudo systemsetup -gettimezone`
  original_tz=`echo $tz| sed 's/Time Zone: //'`
  pst=America/Los_Angeles
  if [ "$original_tz" != "$pst" ]; then
    echo "You may be asked for your password to change the timezone."
    sudo systemsetup -settimezone $pst
  fi
}

tz_hst() {
  tz=`sudo systemsetup -gettimezone`
  original_tz=`echo $tz| sed 's/Time Zone: //'`
  hst="Pacific/Honolulu"
  if [ "$original_tz" != "$hst" ]; then
    echo "You may be asked for your password to change the timezone."
    sudo systemsetup -settimezone $hst
  fi
}

using_port() {
  #lsof -i:${1}
  ps -p $(lsof -i:$1 -Fp | cut -c 2-)
}

log()
{
 echo "[$(date)] $*"
}

echoRun() {
  START=$(date +%s)
  log "> $1"
  eval time $1
  END=$(date +%s)
  DIFF=$(( $END - $START ))
  log "It took $DIFF seconds"
}

sanitize() {
  echo $1 | tr ":  /."  "-" | tr -d ",'\""
}

# history grep tail
hgt() {
  fc -l 1 | grep -i --color=auto $1 | tail -n 40
}

marked() {
  if [[ -f $1 ]]; then
    open -a marked.app $1
    echo found file $1
  else
    open -a marked.app
    echo no file existing $1
  fi
}

ls_symlinks() {
  find . -maxdepth 1 -type l | xargs ls -al
}

setup-docker() {
  # Setup docker vars
  eval "$(docker-machine env default)"
}

gup-dotfiles() {
    pushd .
    cd $PUB_DOTFILES
    gup
    cd $PRIV_DOTFILES
    gup
    popd
}
