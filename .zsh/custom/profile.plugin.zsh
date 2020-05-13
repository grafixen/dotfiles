# Files
alias -s ts=code
alias -s js=code
alias -s css=code
alias -s html=code

# Recursively clean .DS_Store in a given folder
alias ds.clear='find . -name '.DS_Store' -type f -delete'

# ZSH
alias reload='source ~/.zshrc'
alias zshconfig="vi ~/.zshrc"
alias zshconfig.env="cd ~/.zsh/custom/ && vi +RangerEdit"
alias ohmyzsh="cd ~/.oh-my-zsh && vi oh-my-zsh.sh"
alias ohmyzsh.lib="cd ~/.oh-my-zsh/lib && vi +RangerEdit"

# ZSH shortcuts
alias ':r'=reload
alias ':z'=zshconfig
alias ':ze'=zshconfig.env
alias ':zu'=upgrade_oh_my_zsh

# File Manager
alias ':f'=ranger

# Dotfiles Config
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias :df=dotfiles

# NX
alias nx.create='npm init nx-workspace'
alias nx.nestjs.upgrade='npm i -S @nestjs/common@latest @nestjs/core@latest @nestjs/platform-express && npm i -D @nestjs/schematics@latest @nestjs/testing@latest'

# XMRIG
alias xmrig.start.slow='cd /Users/insirql/Applications/xmrig/build && ./xmrig -o pool.supportxmr.com:3333 -u 49VgU6B3TFrX63UeMCc71ZVPyoYqSniAuh4jPU2fyqs7Edb1L5rcy1H1i6NAiGcck66KTz4wKzyaDP6Mq7eB3GCz49kxfEr -p x -k'
alias xmrig.start.fast='cd /Users/insirql/Applications/xmrig/build && ./xmrig -o pool.supportxmr.com:5555 -u 49VgU6B3TFrX63UeMCc71ZVPyoYqSniAuh4jPU2fyqs7Edb1L5rcy1H1i6NAiGcck66KTz4wKzyaDP6Mq7eB3GCz49kxfEr -p x -k'

# Insirql
alias insirql.conf="cd /Users/insirql/Desktop/insirql/production.4.x.x && vi"
alias insirql.start="cd /Users/insirql/Desktop/insirql/production.4.x.x && nvm use 4.9.1 && NODE_ENV=development grunt"
alias insirql.prod="cd /Users/insirql/Desktop/insirql/production.4.x.x && nvm use 4.9.1 && NODE_ENV=production grunt"
alias insirql.build="cd /Users/insirql/Desktop/insirql/production.4.x.x && nvm use 4.9.1 && NODE_ENV=development grunt build"
alias insirql.rsync.dist="insirql.build && rsync -P -azc /Users/insirql/Desktop/insirql/production.4.x.x/public/dist superman@163.172.32.181:/data/insirql.com/public/"

# Insirql Admin
alias admin.start="cd /Users/insirql/Desktop/insirql/admin.com && nvm use 4.9.1 && NODE_ENV=development grunt"
alias admin.build="cd /Users/insirql/Desktop/insirql/admin.com && nvm use 4.9.1 && NODE_ENV=development grunt build"
alias admin.rsync.dist="admin.build && rsync -P -azc /Users/insirql/Desktop/insirql/admin.com/public/dist grafixen@128.199.185.233:/home/grafixen/insirql.admin/public"
