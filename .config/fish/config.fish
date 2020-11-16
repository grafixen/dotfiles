### THEME: BobTheFish
# set -g theme_color_scheme light
# set -g theme_nerd_fonts yes
# set -g theme_title_use_abbreviated_path no
# set -g fish_prompt_pwd_dir_length 99 # shows full path at prompt

### KEY BINDING
bind \cj accept-autosuggestion

### GENERAL
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8

set -x EDITOR nvim
set -x VISUAL nvim
set -x BROWSER 'Google Chrome'

set -x FZF_DEFAULT_OPTS '--height=70% --preview="cat {}" --preview-window=right:60%:wrap'
set -x FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'

### PATHS
# general
set PATH $PATH /usr/local/bin:/usr/local/sbin
set PATH $PATH /usr/local/opt/icu4c/bin:/usr/local/opt/icu4c/sbin
set PATH $PATH /usr/local/lib/pkgconfig

# elk: elasticsearch
set -x ES_HOME $HOME/ELK/elasticsearch-7.8.0
set PATH $PATH $ES_HOME/bin
# elk: logstash
set -x LS_HOME $HOME/ELK/logstash-7.8.0
set PATH $PATH $LS_HOME/bin
# elk: kibana
set -x KB_HOME $HOME/ELK/kibana-7.8.0
set PATH $PATH $KB_HOME/bin

# go
set -x GOPATH $HOME/.go
set PATH $PATH $GOPATH/bin

# imagemagick
set -g PATH $PATH "/usr/local/opt/imagemagick@6/bin"
# For compilers to find imagemagick@6 you may need to set:
# set -gx LDFLAGS "-L/usr/local/opt/imagemagick@6/lib"
# set -gx CPPFLAGS "-I/usr/local/opt/imagemagick@6/include"
# For pkg-config to find imagemagick@6 you may need to set:
# set -gx PKG_CONFIG_PATH "/usr/local/opt/imagemagick@6/lib/pkgconfig"

# java
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk-11.0.7.jdk/Contents/Home
set PATH $PATH $JAVA_HOME/bin

# mongo
set -x MONGO_DATADIR $HOME/data/mongo/db

# mysql
set -x MYSQL5 '5.7.27'
set -x MYSQL8 '8.0.17'
set -x MYSQL5_DATADIR $HOME/data/mysql/db.5
set -x MYSQL8_DATADIR $HOME/data/mysql/db.8

# n
set -x N_PREFIX $HOME/.n
set PATH $PATH $N_PREFIX/bin

# neo4j
set NEO4J_HOME $HOME/Neo4j
set PATH $PATH $NEO4J_HOME/bin

# openssl
set PATH $PATH /usr/local/opt/openssl@1.1/bin

# python
set PATH $PATH /usr/local/opt/python@3.8/bin

# pyenv
set -x PYENV_ROOT $HOME/.pyenv
set PATH $PATH $PYENV_ROOT/bin
# status --is-interactive; and pyenv init - | source

# rbenv
set PATH $PATH $HOME/.rbenv/bin
# status --is-interactive; and source (rbenv init -|psub)

# sqlite
set PATH $PATH /usr/local/opt/sqlite/bin

# yarn
set PATH $PATH $HOME/.yarn/bin

### Source
# asdf
source /usr/local/opt/asdf/asdf.fish
# alias
source $HOME/.config/fish/alias.fish
