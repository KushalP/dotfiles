export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="muse"

plugins=(brew git)

export PATH=/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh
source /opt/boxen/env.sh

case $(hostname -s) in
  300) export GOPATH=$HOME/Documents/golang ;;
  *)   export GOPATH=$BOXEN_SRC_DIR/golang ;;
esac

# PATH includes the go binaries.
export PATH=$GOPATH/bin:$PATH

# Load up rbenv shims.
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Load up nvm shims.
if which nvm > /dev/null; then
    export NVM_DIR=~/.nvm
    source $(brew --prefix nvm)/nvm.sh
fi

# Load up autojump.
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
