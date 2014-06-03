# dotfiles

My MacOS/Linux rc (config) files include's zsh, vim ect.

## Install

### Get antigen

```console
$ mkdir ~/.antigen
$ git clone git://github.com/zsh-users/antigen.git ~/.antigen/antigen
```

### Get project

```console
$ git clone git://github.com/leopku/dotfiles.git
```

### Prepare files

```console
$ cd dotfiles
$ cp .vimrc ~/.vimrc
$ cp .zshrc ~/.zshrc

# running this line under **mac**

$ cp zshrc_local.mac ~/.zshrc_local

# running this line under **linux**
# $ cp zshrc_local.linux ~/.zshrc_local

$ cp .alias ~/.alias
$ cp alias_local.example ~/.alias_local
```

### .alias

default aliases file, provides following commands:

* `config.zsh` : open `~/.zshrc` in vim
* `config.zsh.refresh` : reload `~/.zshrc`
* `config.zsh.local` : open `~/.zshrc_local` in vim
* `config.zsh.local.refresh` : reload `~/.zshrc_local`
* `config.alias` : open `~/.alias` in vim
* `config.alias.refresh` : reload `~/.alias`
* `config.alias.local` : open `~/.alias_local` in vim
* `config.alias.refresh` : reload `~/.alias_local`
* `config.vim` : open `~/.vimrc` in vim
* `config.hosts` : open `/etc/hosts` in vim with root(sudo)
* `network.port_alive` : using `get.port_alive <ip> <port>` to testing port is aliving
* `netwok.wild_ip` : get internet outgoing ip.

## Customize

### zshrc_local

edit `~/.zshrc_local` and put your custome zsh configuration in it.

### alias_local

edit `~/.alias_local` and put your custome alias in it.

## zsh

zsh was [antigen](https://github.com/zsh-users/antigen) based.

### component

* antigen
* bundler
* colored-man
* command-not-found
* extract
* gem
* git
* git-extras
* bobthecow/git-flow-completion
* history
* python
* rsync
* vundle
* zsh-users/zsh-syntax-highlighting
* zsh-users/zsh-history-substring-search
* zsh-users/zsh-completions

### theme

* show ruby version manager - rbenv or rvm
* show ruby version
* show git branch info
* show git status

## vim

vim was [vundle](https://github.com/gmarik/Vundle.vim) based.

### components

* vundle
* emmet
* nerdtree
* neocomplcache
* AutoClose
* ctrlp
* vim-airline
* fugitive
* syntastic
* vim-easymotion
* bufexplorer
* vim-multiple-cursors
* vim-commentary

### theme

* womprat (default)
* solarized
* base16-ocean
