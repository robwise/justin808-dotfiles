bindkey -v
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey '^R' history-incremental-search-backward
bindkey '^F' history-incremental-search-forward
bindkey "\e[3~" delete-char
bindkey " " magic-space # do history expansion on space
bindkey "^G" history-search-backward
bindkey "^S" history-search-forward
bindkey '[C' forward-word
bindkey '[D' backward-word

# Order matters
source $PUB_DOTFILES/aliases.zsh
source $PUB_DOTFILES/utility.zsh
source $PUB_DOTFILES/rails.zsh
source $PUB_DOTFILES/git.zsh
source $PUB_DOTFILES/git-flow.zsh
