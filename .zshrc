
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="junkfood"

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
#ENABLE_CORRECTION="true"

plugins=(git, ssh-agent, virtualenvwrapper, colorize, zsh-syntax-highlighting, nyan, colored-man-pages)

source $ZSH/oh-my-zsh.sh

for file in $HOME/.{shell_exports,shell_aliases,shell_functions}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
#  echo "$file"
done;
unset file;

#export PATH=~/DEV/autoputty-python/bin:$PATH
#fpath=($fpath ~/DEV/autoputty-python/autocomplete)
#autoload -U compinit
#compinit

export PROJECT_HOME=~/DEV
export WORKON_HOME=~/Envs
export GOBIN=~/go/bin

mkdir -p $PROJECT_HOME
mkdir -p $GOBIN

source /usr/local/bin/virtualenvwrapper.sh

autoload -U compinit && compinit -u
