# git clone git://github.com/zsh-users/antigen.git ~/.antigen/antigen
# start_time="$(date +%s)"

DISABLE_AUTO_UPDATE="true"

export RBENV_ROOT="$HOME/.rbenv"

# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source ~/.antigen/antigen/antigen.zsh

# customize for your own
ZSHRC_LOCAL="$HOME/.zshrc_local"
ALIAS_LOCAL="$HOME/.alias_local"

source "$HOME/.alias"

if [[ -f $ZSHRC_LOCAL ]]
then
    source $ZSHRC_LOCAL
fi

if [[ -f $ALIAS_LOCAL ]]
then
    source $ALIAS_LOCAL
fi

# default bindings for zsh-users/zsh-history-substring-search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
    brew
    brew-cask
    bundler
    capistrano
    catimg
    colored-man
    command-not-found
    extract
    gem
    git
    git-extras
    bobthecow/git-flow-completion
    history
    npm
    python
    rails
    rbenv
    rsync
    urltools
    vundle
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-history-substring-search
    zsh-users/zsh-completions
EOBUNDLES

# antigen theme https://gist.github.com/3750104.git agnoster
# antigen theme fino
# antigen theme suvash 
# antigen themem murilasso
# antigen themem crunch
# antigen themem gnzh
antigen theme https://gist.github.com/leopku/75435e606128443a64f7 fino-simplify

antigen apply

## Functions
add_auth_key () {
    ssh-copy-id $@
}
# end_time="$(date +%s)"
# echo .zshrc: $((end_time - start_time)) seconds

