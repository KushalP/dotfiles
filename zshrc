export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="muse"

plugins=(brew git nvm rbenv)

source $ZSH/oh-my-zsh.sh
source /opt/boxen/env.sh

case $(hostname -s) in
  *)   export GOPATH="${BOXEN_SRC_DIR}golang" ;;
esac

# PATH includes the go binaries.
export PATH=$GOPATH/bin:$PATH

# Load up autojump.
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Set Java Home if it's present.
if which javac > /dev/null; then
    export JAVA_HOME=$(/usr/libexec/java_home)
fi
