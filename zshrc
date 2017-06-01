export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="muse"

plugins=(brew git)

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
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Load up autojump.
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Set Java Home if it's present.
if which javac > /dev/null; then
    export JAVA_HOME=$(/usr/libexec/java_home)
fi
