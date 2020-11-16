### HISTORY
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

### PATHS
# General
PATH=${PATH}:.bin
PATH=${PATH}:/usr/local/bin:/usr/local/sbin

# Applications
PATH=${PATH}:/Applications/VMware\ Fusion.app/Contents/Library
PATH=${PATH}:/usr/local/lib/pkgconfig
PATH=${PATH}:/usr/local/opt/icu4c/bin:/usr/local/opt/icu4c/sbin
PATH=${PATH}:/usr/local/opt/openssl@1.1/bin
PATH=${PATH}:/usr/local/opt/sqlite/bin

### Constants
export VISUAL=nvim
export EDITOR=$VISUAL

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export VIMRC=$HOME/.config/nvim/init.vim
export TERM="xterm-256color"

# FZF
export FZF_DEFAULT_OPTS="--height=70% --preview='cat {}' --preview-window=right:60%:wrap"
export FZF_DEFAULT_COMMAND="rg --files --no-ignore-vcs --hidden"

# Go
export GOPATH=$HOME/.go
PATH=${PATH}:$GOPATH/bin

# ImageMagick 6
export LDFLAGS="-L/usr/local/opt/imagemagick@6/lib"
export CPPFLAGS="-I/usr/local/opt/imagemagick@6/include"
export PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig"
PATH=${PATH}:/usr/local/opt/imagemagick@6/bin

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.7.jdk/Contents/Home
PATH=${JAVA_HOME}/bin:$PATH

# MongoDB
export MONGO_DATADIR=$HOME/data/mongo/db

# MySQL
export MYSQL5=5.7.27
export MYSQL8=8.0.17
export MYSQL5_DATADIR=$HOME/data/mysql/db.5
export MYSQL8_DATADIR=$HOME/data/mysql/db.8

# n
export N_PREFIX=$HOME/.n
PATH=${PATH}:$N_PREFIX/bin

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
PATH=${PATH}:$PYENV_ROOT/bin

# Rbenv
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/usr/local/opt/openssl@1.1"

# Yarn
PATH=${PATH}:$HOME/.yarn/bin

### User configuration
# ASDF
source /usr/local/opt/asdf/asdf.sh

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Aliases & Functions
source ~/.config/zsh/custom/user.alias.zsh 2 > /dev/null
source ~/.config/zsh/custom/user.functions.zsh 2 > /dev/null

# ZSH Plugins
# Suggestions
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2 > /dev/null
bindkey '^j' autosuggest-accept

# Auto Completions
source ~/.config/zsh/plugins/zsh-completions/zsh-completions.plugin.zsh 2 > /dev/null
autoload -U compinit && compinit

# ZSH Case Insensitivity
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Syntax Highlighting (Note: Should be last)
source ~/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2 > /dev/null

### THEMES
setopt promptsubst
fpath+=$HOME/.config/zsh/themes/pure
source ~/.config/zsh/themes/pure/pure.zsh
autoload -U promptinit; promptinit
prompt pure

