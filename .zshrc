
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

#for WSL
unsetopt BG_NICE

#export PATH=~/DEV/autoputty-python/bin:$PATH
#fpath=($fpath ~/DEV/autoputty-python/autocomplete)
#autoload -U compinit
#compinit

mkdir -p $PROJECT_HOME


source /usr/local/bin/virtualenvwrapper.sh

autoload -U compinit && compinit -u

eval "$(pyenv virtualenv-init -)"
eval "$(pyenv init -)"

if [ -t 1 ]; then  
  cd ~
fi  

if [ -f ~/.dir_colors ]; then  
  eval `dircolors ~/.dir_colors`
fi 
