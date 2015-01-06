export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="muse"

plugins=(brew git)

export PATH=$HOME/bin:/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh
source /opt/boxen/env.sh

export GOPATH=$BOXEN_SRC_DIR/golang

# PATH includes the go binaries.
export PATH=$GOPATH/bin:$PATH
