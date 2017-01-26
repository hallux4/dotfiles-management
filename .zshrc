
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="junkfood"

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"

plugins=(git, ssh-agent, virtualenvwrapper, colorize, zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

for file in $HOME/.{shell_exports,shell_aliases,shell_functions}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#export PATH=~/DEV/autoputty-python/bin:$PATH
#fpath=($fpath ~/DEV/autoputty-python/autocomplete)
#autoload -U compinit
#compinit

export PROJECT_HOME=~/DEV
export WORKON_HOME=~/Envs
mkdir -p $PROJECT_HOME
source /usr/local/bin/virtualenvwrapper.sh

