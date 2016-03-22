# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="dst"
export TERM="xterm-256color"
DISABLE_UPDATE_PROMPT=true

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow tmux brew osx npm)

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF_8

source $ZSH/oh-my-zsh.sh
source ~/.nvm/nvm.sh

# Customize to your needs...
export GOPATH=$HOME/go
export PATH=/Users/micke/.rvm/gems/ruby-2.1.1/bin:/Users/micke/.rvm/gems/ruby-2.1.1@global/bin:/Users/micke/.rvm/rubies/ruby-2.1.1/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local:/usr/local/sbin:/usr/local:/usr/local/sbin:/Users/micke/.rvm/bin:$GOPATH/bin
export ANDROID_HOME=`brew --prefix android`
export PGDATA=/usr/local/var/postgres
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules

ZSH_TMUX_AUTOSTART=true

export JAVA_HOME=$(/usr/libexec/java_home)
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

source ~/.nvm/nvm.sh
