export VISUAL=nvim
export EDITOR=$VISUAL

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export ZSH=$HOME/.oh-my-zsh
export VIMRC=$HOME/.config/nvim/init.vim

PATH=${PATH}:.bin
PATH=${PATH}:/usr/local/opt/mongodb-community@3.6/bin
PATH=${PATH}:/usr/local/bin:/usr/local/sbin
PATH=${PATH}:/usr/local/opt/icu4c/bin:/usr/local/opt/icu4c/sbin
PATH=${PATH}:/usr/local/opt/sqlite/bin
PATH=${PATH}:/usr/local/opt/openssl@1.1/bin
PATH=${PATH}:/usr/local/lib/pkgconfig

# ASDF
# export ASDF_DIR=$HOME/.asdf
# PATH=${PATH}:$ASDF_DIR/shims

# DB Data Path
export MONGO_DATADIR=$HOME/data/mongo/db
export MYSQL5_DATADIR=$HOME/data/mysql/db.5
export MYSQL8_DATADIR=$HOME/data/mysql/db.8

# Fusion
PATH=${PATH}:/Applications/VMware\ Fusion.app/Contents/Library

# FZF Preview
export FZF_DEFAULT_OPTS='--height=70% --preview="cat {}" --preview-window=right:60%:wrap'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.7.jdk/Contents/Home
PATH=${JAVA_HOME}/bin:$PATH

### ImageMagick 6
export LDFLAGS="-L/usr/local/opt/imagemagick@6/lib"
export CPPFLAGS="-I/usr/local/opt/imagemagick@6/include"
export PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig"
PATH=${PATH}:/usr/local/opt/imagemagick@6/bin

# MYSQL ASDF VERSION
export MYSQL5=5.7.27
export MYSQL8=8.0.17

# Python
PATH=${PATH}:$HOME/Library/Python/3.7/bin

# Terminal
export TERM="xterm-256color"

# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

