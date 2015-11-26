export PATH=$PATH:"$HOME/.rbenv/bin"
export PATH=$PATH:"$HOME/.rbenv/shims"
export PATH=$PATH:"/usr/local/lib/node_modules"
export PATH=$PATH:"/usr/local/bin"
export PATH=$PATH:"/usr/local/sbin"
export PATH=$PATH:"/usr/bin"
export PATH=$PATH:"/usr/sbin"
export PATH=$PATH:"/usr/local/mysql/bin"
export PATH=$PATH:"/usr/X11/bin"
export PATH=$PATH:"/Applications/Postgres.app/Contents/Versions/9.3/bin"
export PATH=$PATH:"/usr/local/Cellar/qt5/5.3.1/bin"

# Runs several tasks for RBENV.
# https://github.com/sstephenson/rbenv#basic-github-checkout
# Must go in this file so that SublimeLinter can see it.
eval "$(rbenv init - zsh)"
