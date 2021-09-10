# Path to your oh-my-zsh installation.
export ZSH=/Users/mikaeljagekrans/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dst"
plugins=(git tmux npm zsh-syntax-highlighting)

# User configuration

source $ZSH/oh-my-zsh.sh

ZSH_TMUX_AUTOSTART=true

export EDITOR='vim'
