export PUB_DOTFILES=$HOME/CloudStation/dotfiles/justin808-dotfiles/zsh
export PRIV_DOTFILES=$HOME/CloudStation/dotfiles/private-dotfiles
export SCRIPTS=$HOME/CloudStation/dotfiles/justin808-dotfiles/scripts
export ZSH_CUSTOM=$PUB_DOTFILES/zsh/oh-my-zsh-custom
export ZSH=$HOME/.oh-my-zsh
export EDITOR=vim

# Place any env variables that the public one depends on.
source $PRIV_DOTFILES/init-vars.zsh
source $PRIV_DOTFILES/personal-aliases.zsh

source $PUB_DOTFILES/init.zsh

# Add zsh-completions to fpath. See https://github.com/zsh-users/zsh-completions
# This only works if near the top for some reason, maybe it has to do with
# coming before oh-my-zsh.
fpath=(/usr/local/share/zsh-completions $fpath)
fpath=($SCRIPTS $fpath) # this loads _hub autocompletions

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cobalt2"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(bundler osx rake ruby rails gem brew)
# Note: I'm using the built-in autocomplete that comes with hub instead of using the git plugin

# User configuration
source $ZSH/oh-my-zsh.sh
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"

#NOTE: I have all of my path modifications in ~/.zprofile
#      This was necessary because Sublime Text's SublimeLinter plugin
#      copies the path from there, and otherwise won't find the various
#      libraries it implements.

# Source dotfiles/scripts
# source ~/dev/scripts/.aliases
# source ~/dev/scripts/.extra

# Allows using 'git' to access hub functionality
eval "$(hub alias -s)"

# Set default docker-machine env variable
eval "$(docker-machine env default)"

export NVM_DIR="/Users/Rob/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh" # this loads SCM Breeze
