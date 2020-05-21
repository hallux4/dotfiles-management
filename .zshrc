# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="af-magic"
ZSH_THEME="powerlevel10k/powerlevel10k"

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

if test ! -n "$SSH_AUTH_SOCK"
then
  for f in /tmp/ssh-*/agent.*(=Nu:$LOGNAME:)
  do
    SSH_AUTH_SOCK=${f}
    export SSH_AUTH_SOCK
    if ssh-add -l >/dev/null 2>/dev/null
    then
        echo SSH_AUTH_SOCK=${f}
        break
    else
        unset SSH_AUTH_SOCK
    fi
  done
fi

if test  -d $HOME/.ssh -a "$SSH_AUTH_SOCK" = ""
then
    eval $(ssh-agent)
    ssh-add
fi


## ssh-agent multi terminal
#export SSH_AUTH_SOCK=~/.ssh/ssh-agent.$HOSTNAME.sock
#ssh-add -l 2>/dev/null >/dev/null
#if [ $? -ge 2 ]; then
  #ssh-agent -a "$SSH_AUTH_SOCK" >/dev/null
#fi

if [ -t 1 ]; then  
  cd ~
fi  

if [ -f ~/.dir_colors ]; then  
  eval `dircolors ~/.dir_colors`
fi 

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
