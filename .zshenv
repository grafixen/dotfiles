export VISUAL=nvim
export EDITOR=$VISUAL

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export ZSH=$HOME/.oh-my-zsh

PATH=${PATH}:.bin
PATH=${PATH}:/usr/local/opt/mongodb-community@3.6/bin
PATH=${PATH}:/usr/local/bin:/usr/local/sbin
PATH=${PATH}:/usr/local/opt/icu4c/bin:/usr/local/opt/icu4c/sbin
PATH=${PATH}:/usr/local/opt/sqlite/bin
PATH=${PATH}:/usr/local/opt/openssl@1.1/bin
PATH=${PATH}:/usr/local/lib/pkgconfig

export ES_HOME=~/Elastic/elasticsearch
PATH=${ES_HOME}/bin:$PATH

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.0.1.jdk/Contents/Home
PATH=${JAVA_HOME}/bin:$PATH

### ImageMagick 6
PATH=${PATH}:/usr/local/opt/imagemagick@6/bin
export LDFLAGS="-L/usr/local/opt/imagemagick@6/lib"
export CPPFLAGS="-I/usr/local/opt/imagemagick@6/include"
export PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig"

export TERM="xterm-256color"

