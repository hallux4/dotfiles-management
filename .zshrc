
export HOME="/home/$(whoami)"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="afowler"

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $HOME/.antigen.zsh

bindkey "\033[1~" beginning-of-line
bindkey "\033[4~" end-of-line

export LANG=en_US.UTF-8
export EDITOR='vim'
export PATH=~/DEV/autoputty-python/bin:$PATH

alias reload='source ~/.zshrc'
alias restart='exec zsh -l'
alias zshedit='vim ~/.zshrc'
alias net1='sudo nethogs eth0'
alias net2='sudo speedometer -r eth0 -t eth0'
alias checkip="sudo cat /var/log/syslog | grep 'iptables denied' | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}.*DPT=[0-9]*' | sed -r 's/DST=.*SPT=[0-9]*//g' | sort | uniq -c | sort -n"
alias checkip-history="sudo cat /var/log/syslog | grep 'iptables denied' | grep -Eo '^.*[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}.*DPT=[0-9]*' | sed -r 's/vm-private.*MAC=(..:)*..//' | sed -r 's/DST.*SPT=[0-9]*//'"
alias checkdate='sudo ntpdate 0.fr.pool.ntp.org'

fpath=($fpath ~/DEV/autoputty-python/autocomplete)
autoload -U compinit
compinit

antigen bundle virtualenvwrapper
antigen bundle colorize

export PROJECT_HOME=~/DEV
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh

r() {
  local f
  f=(~/DEV/autoputty-python/autocomplete/*(.))
  unfunction $f:t 2> /dev/null
  autoload -U $f:t
}

